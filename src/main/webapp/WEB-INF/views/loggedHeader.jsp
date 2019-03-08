<header>
    <nav class="navbar navbar-default navbar-fixed-top" style="background-color: #204d74; color: white">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="font-size: 25px" href="http://localhost:8080/">OnlineStore</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="http://localhost:8080/">Homepage</a></li>
                    <li><a href="http://localhost:8080/product/all">Purchase</a></li>
                    <li><a href="http://localhost:8080/lease-product/all">Lease</a></li>
                    <li><a href="?">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">


                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                    <span class="caret">

                    </span>&nbsp;
                            My account
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="http://localhost:8080/user/myaccount">Account details</a></li>
                            <li class="active"><a href="#">Add address</a></li>
                            <li class="active"><a href="http://localhost:8080/order/allorders">My orders</a></li>
                            <li class="active"><a href="http://localhost:8080/payment/allpayments">My payments</a></li>
                        </ul>
                    </li>


                    <li><a href="http://localhost:8080/logout  ">Log out</a></li>
                    <li><a href="http://localhost:8080/cart/"><span class="glyphicon glyphicon-shopping-cart"></span>
                        Your Cart</a></li>
                </ul>
            </div>
        </div>

    </nav>
</header>