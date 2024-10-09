<style>
        footer {
        display: flex;

        text-align: center;
        padding: 20px;
        background-color: #2a5c7b;
        color: #fff;
        width: 100%;
    }

    footer >*{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 25%;
    }

    .about-us{
        width: 100%;
    }
</style>
<footer>
<div class="contact">
    <h1>contact:</h1>
    <a  href="/contact">contact</a>
    <p>email: 4Szakelijkeemail@gmail.com</br>tel: 0653682395</br>adres: terheideseweg 350 </br>Btw: 123456789</br>Kvk: 4S </p>
</div>
<div class="about-us">
    <h2>Over ons</h2>
    <p>Bij 4S ontwikkelen we innovatieve software-oplossingen voor de sportwereld. Wat begon in 2008 als een klein project van onze oprichter Jos Adder, is uitgegroeid tot een toonaangevend bedrijf met meer dan 50 medewerkers. Wij zijn gespecialiseerd in het creëren van gebruiksvriendelijke sportapplicaties, van toernooibeheersystemen tot clubwebsites. Onze passie voor sport en technologie drijft ons om elke dag te streven naar het beste voor onze klanten. Met een flexibele, samenwerkende cultuur en een sterke focus op kwaliteit blijven we sportorganisaties wereldwijd ondersteunen.</p>
</div>
<div class="socials">
    <h3>Volg ons op:</h3>
    <a href="https://www.facebook.com/"><img src="images/facebook.png" alt="facebook"></a>
    <a href="https://www.instagram.com/"><img src="images/instagram.png" alt="instagram"></a>
    <a href="https://www.twitter.com/"><img src="images/twitter.png" alt="twitter"></a>
    <a href="https://www.linkedin.com/"><img src="images/linkedin.png" alt="linkedin"></a>
    <a href="https://www.youtube.com/"><img src="images/youtube.png" alt="youtube"></a>
</div>
<div class="copyright">
    <p>© {{ __('misc.copyright') }} {{ date('Y') }}</p>
</div>
</footer>


<!-- analytics code -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30506707-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<!-- Einde analytics code -->

<script language="Javascript" type="text/javascript">

 if (top.location!= self.location) {
  top.location = self.location.href
 }

</script>
