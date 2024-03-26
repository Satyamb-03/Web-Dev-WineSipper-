var express = require('express');

var app=express();
var session=require('express-session');

var mysql=require('mysql');
var conn=require('./dbConfig');


//ejs template
app.set('view engine','ejs');

app.use(session({
    secret: 'yoursecret',
    resave: true,
    saveUnitialized: true
}));

app.use('/public', express.static('public'));

app.use(express.json());
app.use(express.urlencoded({extended:true}));

app.get('/', function (req, res){
    res.render('home');
});

app.get('/contactUs', function(req, res){
    res.render('contactUs',{title: 'Contact Us'});
});

app.get('/stillwines', function(req, res){
    conn.query("Select * FROM stillwines", function(err,result){
        if(err) throw (err);
        console.log(result);
    res.render('stillwines',{title: 'Still Wines',stillwinesData:result});
    });
});

app.get('/sparklingwines', function(req, res){
    conn.query("Select * FROM sparklingwines", function(err,result){
        if(err) throw (err);
        console.log(result);
    res.render('sparklingwines',{title: 'Sparkling Wines',sparklingwinesData:result});
    });
});

app.get('/winecatalogue', function(req,res){
    res.render('winecatalogue',{title:'Wine Catalogue'})
});

app.get('/privacyPolicy', function(req,res){
    res.render('privacyPolicy',{title:'Privacy Policy'})
});

app.get('/login', function(req, res){
    res.render('login.ejs');
});

app.post('/auth',function(req,res){
    let name = req.body.username;
    let password = req.body.password;
    if(name && password) {
        conn.query('SELECT * FROM users WHERE name = ? AND password=?', [name,password],
        function(error,results,fields){
            if(error) throw error;
            if (results.length > 0) {
                req.session.loggedin = true;
                req.session.username= name;
                res.redirect('/membersOnly');
            } else {
                res.send('Incorrect Username and/or Password!');
            }
            res.end();
        });
    } else{
        res.send('Please enter Username and Password!');
        res.end();
    }
});

app.get('/register', function(req,res){
    res.render("register",{title:'Register'});
})

app.post('/register', function(req,res){
    let name =req.body.username;
    let password=req.body.password;
    if(name&&password){
        var sql=`INSERT INTO users(name,password) VALUES ("${name}","${password}")`;
        conn.query(sql, function(error,results){
        if(error) throw error;
        console.log('record inserted');
        res.render('login');
        })
    } else{
        console.log("Error");
    }
});

// Users can access this if they are logged in
app.get('/membersOnly', function(req,res,next){
    if (req.session.loggedin) {
        res.render('membersOnly.ejs');
    }
    else {
        res.send('Please login to view this page!');
    }
});

app.post('/addWines', function(req,res,next){
    var user_id=req.body.user_id;
    var Id=req.body.Id;
    var Name=req.body.Name;
    var Type=req.body.Type;
    var Vintage= req.body.Vintage;
    var Country=req.body.Country;
    var Region=req.body.Region;
    var Price=req.body.Price;
    var Description=req.body.Description;
    console.log(Price);
    var sql=`INSERT INTO sparklingwines (user_id,Id,Name,Type,Vintage,Country,Region,Price,Description)
    VALUES ("${user_id}","${Id}","${Name}","${Type}","${Vintage}","${Country}","${Region}","${Price}","${Description}")`;
    conn.query(sql,function(err,result){
        if(err) throw (err);
        console.log('Wine added successfully!!!');
        res.redirect('/addedWines');
    });
});

app.get('/reviews', function(req, res){
    res.render('reviews',{title: 'reviews'});
});

app.get('/learnmore', function(req,res){
    res.render('learnmore',{title: 'LearnMore'});
});

app.get('/addWines', function(req,res){
    res.render('addWines',{title: 'AddWines'});
});

app.get('/addedWines', function(req,res){
    res.render('addedWines',{title: 'Wine Added'});
});

app.get('/logout',(req,res)=>{
    req.session.destroy();
    res.redirect('/');
});

app.listen(3000);
console.log('Node app is running on port 3000');
