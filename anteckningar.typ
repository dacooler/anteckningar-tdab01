
// Snälla ha marginal jag får huvudvärk av att titta på skiten annars
// Marginal behövs inte hallå fett onödigt
//#set page(margin: (top:0.2cm, bottom:0cm, left:0cm, right:0cm))
#set page(margin: (top: 1.2cm, bottom: 1cm, left: 1cm, right: 1cm))

#set page(columns: 2)

== Definition av |

$P(A | B) = P(A inter B) / P(B)$

== Bayes sats

$P(A | B) = P(B | A) dot P(A) "/" P(B)$

/* Den här skiten är fett onödig hallå
== Alternativ form av Bayes sats:
$ P(A|B) = (P(B|A) dot P(A))/(P(B|A) dot P(A) + P(B|A^c) dot P(A^c)) space space space space (A^c = accent(A, -)) $

== Lagen om total sannolikhet
$B_1,…,B_5$ är en partitionering av S. Bayes sats ger då
$ P(B) = P(B|A) dot P(A) + P(B|accent(A, -)) dot P(accent(A, -)) $
*/

== Räknelag

$P(max(x_0, ..., x_n) <= x) = P(x_1 <= x, ... , x_n <= x)$

== Central Limit Theorem (CLIT / CLT / CGS)
Om x har fördelning med $mu$ $sigma$ så är $accent(x, -)$ normalfördelad med $mu = mu$, $sigma = sigma/sqrt(n)$ n = storleken av stickprovet

== Signifikansnivå vs konfidensnivå
Så, för ett test är konfidensnivån oddsen att alternativa hypotesen stämmer. konfidensnivå = 1 - signifikansnivå

*Typ I fel* = *signifikansnivå* = $alpha = bold(P)("Förkasta" H_0 | H_0 "är sann")$

*Typ 2 fel* = $bold(P)("Acceptera" H_0 | H_0 "är falsk")$

*Styrka* = *konfidensnivå* = $bold(P)("Förkasta" H_0 | H_A "är sann") = 1 - "typ II fel"$

P-värdet för en observation $Z_"obs"$ av $Z$ är $P(Z>Z_"obs")$ är sannolikheten att nollhypotesen gäller. (säg inte det för statistiker kommer slå dig)

=== konfidens-interval

2-sidigt: $accent(X, -) = accent(x, -) plus.minus z_(alpha "/" 2) * "STD"_"ERR"$
1-sidigt: $accent(X, -) = accent(x, -) plus.minus z_(alpha) * "STD"_"ERR"$
Där $"STD"_"ERR" = s / sqrt(n)$

== Regression

$S S_"TOTAL" = sum_i (y_i - accent(y, -))^2$

$S S_"REG" = sum_i (accent(y_i, hat) - accent(y, -))^2$

$S S_"ERR" = sum_i (y_i - accent(y, hat))^2$

$R^2 = (S S_"REG")/(S S_"TOTAL")$

$R^2$ är andelen av den totala variationen förklarad av modellen.

$P(max(x_0, ..., x_n) <= x) = P(x_1 <= x, ... , x_n <= x)$

== Väntevärde och varians
=== Definition
$"Var"[X] = sum_x (x - mu)^2 dot italic(p)x(x) =EE[X^2] - EE[X]^2$

$sigma = "Std"(x) = sqrt("Var"(X))$

==== Stickprovsvarians
$s^2 = 1/(n - 1) sum_(i=1)^n (x_i - accent(x, -))^2 = 1/(n-1) (sum_(i=1)^n x_i^2 - 1/n (sum_(i=1)^n x_i)^2)$

=== Räknelagar
$EE[c] = c$ om c är en konstant

$EE[a X + b Y + c] = a EE[X] + b EE[Y] + c$ med a,b,c konstanter

$"Var"[a X + b] = a^2 "Var"[X]$

$"Var"[a X + b Y + c] = a^2 "Var"[X] + b^2 "Var"[Y] + 2 a b "Cov"(X,Y)$ med a,b,c konstanter

$P(A|B) = P(A union B) / P(B)$

$"cov"(X, Y) = E[(X-E[X])(Y-E[Y])] = sum_i ((x_i-accent(x, -)) (y_i - accent(y, -))) = E(X Y) - E[X] * E[Y]$

=== Om X, Y Oberoende:

$EE[X Y] = EE[X] EE[Y]$

$"Var"[X + Y] = "Var"[X] + "Var"[Y]$

=== Chebyshevs olikhet

$PP(abs(X-mu) > epsilon)<=(sigma/epsilon)^2$

=== Normalfördelning:
==== Hur summerar normalfördelning

$X ~ "norm"(sigma=sigma_x, mu=mu_x)$

$Y ~ "norm"(sigma=sigma_y, mu=mu_y)$

$X + Y ~ "norm"(sigma=sqrt((sigma_x)^2 + (sigma_y)^2), mu=mu_x + mu_y)$

==== StandardError
När du summerar varianser och tar medelvärdet av dem
$"STD"_("ERR") = s^2/n$

När du tar standardavvikelser på ett medelvärde
$"STD"_("ERR") = s/sqrt(n)$

== Konvertera Gamma till Poisson

$ P("Gamma"(alpha, lambda) > k) = P("Poisson"(lambda * k) < alpha) $

Där $alpha$ är ett heltal.
Fungerar lika för $<, >, <= "och" >=$.

== Central Limit Theorem (CLIT / CLT / CGS)
Om x har fördelning med $mu$ $sigma$ så är $accent(x, -)$ normalfördelad med $mu = mu$, $sigma = sigma/sqrt(n)$.

n = storleken av stickprovet

=== Applikationer

Om n är stort gäller (notera "- 0.5"!):
$ P("Binom"(n, p) >= a) approx \ P("Norm"(mu = p q, sigma = n p (1 - p)) >= a - 0.5) $

== Skattning av parametrar

$accent(theta, hat)$ är en väntevärdesriktig skattning av $theta$ omm $EE[accent(theta, hat)] = theta$

$accent(theta, hat)$ är en konsistent skattning av $theta$ omm $"Var"[accent(theta, hat)] -> 0$ då $n -> infinity$ där n är storleken på stickprovet

== Hypotestest

Allmänt: $H_0 "vs" H_A$
+ Välj teststatistika, $T = T(X_1, ... , X_n)$.
+ Beräkna nollfördelningen för T,
  dvs samplingfördelningen för T om $H_0$ är sann.
+ Bestäm förkastningsregionen R i nollfördelningen så att
  $P(T in R | H_0) = alpha)$.
+ Förkasta $H_0$ på signifikansnivån $alpha$ om
  $T_"obs" in R, "där" T_"obs"$ är det
observerade värdet på T.

== Z-test

Hypotestest för när X är normalfördelad.
Normalisera först X till $Z = (X - mu_0) / sigma$
Jämför sedan Z med $z_(alpha "/" 2)$ eller $z_(alpha)$.
Använda $z_(alpha "/" 2)$ för tvåsidigt test och $z_(alpha)$ för ensidigt test. $mu_0$ är $mu$-värdet enligt noll-hypotesen $H_0$.

=== Z-test för $accent(X, -)$

När vi gör test för ett medelvärde normaliserar vi istället genom $Z = (accent(X, -) - mu_0) / (s "/" sqrt(n))$

== T-test

Samma som för Z-test men jämför med t-tabellen istället ($t_alpha$ eller $t_(alpha "/" 2)$).
Frihetsgrader "df" i t-tabellen är oftast n - 1 men ibland n - 2 för att fucka med oss.
För $accent(X, -)$ är $"df" = n - 1$.
För en linjär regressionsmodell är df = n - antal variabler i regressionsmodellen.

== Signifikansnivå vs konfidensnivå
Så, för ett test är konfidensnivån oddsen att alternativa hypotesen stämmer. konfidensnivå = 1 - signifikansnivå

*Typ I fel* = *signifikansnivå* = $alpha = bold(P)("Förkasta" H_0 | H_0 "är sann")$

*Typ 2 fel* = $bold(P)("Acceptera" H_0 | H_0 "är falsk")$

*Styrka* = *konfidensnivå* = $bold(P)("Förkasta" H_0 | H_A "är sann") = 1 - "typ II fel"$

P-värdet för en observation $Z_"obs"$ är $P(Z>Z_"obs")$

=== konfidens-interval

2-sidigt: $accent(X, -) = accent(x, -) plus.minus z_(alpha "/" 2) * "STD"_"ERR"$

1-sidigt: $accent(X, -) = accent(x, -) plus.minus z_(alpha) * "STD"_"ERR"$

Där $"STD"_"ERR" = s / sqrt(n)$

== Regression

$S S_"TOTAL" = sum_i (y_i - accent(y, -))^2$

$S S_"REG" = sum_i (accent(y_i, hat) - accent(y, -))^2$

$S S_"ERR" = sum_i (y_i - accent(y, hat))^2$

$R^2 = (S S_"REG")/(S S_"TOTAL")$

$R^2$ är andelen av den totala variationen förklarad av modellen.

$S_(x y) = sum_i (x_i - accent(x, -)) (y_i - accent(y, -))$

$S_(x y) = (n - 1) "cov"(x, y)$

$S_(x x) = (n - 1) "var"(x)$

=== lutningen $b_1$

$b_1 = s_(x y) / s_(x x) = (sum_i (x_i - accent(x, -)) y_i) / s_(x x)$

$"var"(b_1) = (sum_i (x_i - accent(x, -)^2 "var"(y_i))) / s_(x x)^2 = sigma^2 / s_(x x)$

=== konstanttermen $b_0$

$b_0 = accent(y, -) - b_1 accent(x, -)$

=== konfidensintervall och hypotestest för $b_1$

$b_1 plus.minus t_(alpha "/" 2) s / sqrt(S_(x x))$ där $s = sqrt(sum (y_i - accent(y, hat)_i)^2 / (n - 2))$

$t = (b_1 - B) / (s "/" sqrt(S_(x x)))$

=== konfidensintervall för medelvärdet av y vid en punkt x

om $y = b_0 + b_1 * x$ då är konfidensintervallet för Y

$ y plus.minus t_(alpha "/" 2) dot s dot sqrt(1 / n + (x - accent(x, -))^2 / S_(x x)) $

där t-fördelningen har n - 2 frihetsgrader, och $s^2 = "SS"_"ERR" "/" (n - 2)$ där $"SS"_"ERR" = sum_i (y_"obs,i" - y_i)^2$ där $y_"obs,i"$ är det observerade värdet och $y_i$ är värdet från den linjära regressionsmodellen.

=== konfidensintervallet för ett specifikt y vid en punkt x

Samma som ovan men

$ y plus.minus t_(alpha "/" 2) dot s dot sqrt(1 + 1 / n + (x - accent(x, -))^2 / S_(x x)) $

== Bayesiansk estimator

$ EE(theta | x) = integral theta pi(theta | x) d theta $

== Bayesiansk konfidensintervall (kredibilitetsintervall)

$P(theta in [a, b] | x) = integral_a^b pi(theta | x) d theta = 0.95$.
Dela sen upp i $P(theta <= a) = integral_(- infinity)^a pi(theta | x) d theta = 0.025$ och $P(theta <= b) = integral_(- infinity)^b pi(theta | x) d theta = 0.975$ och beräkna a samt b för hand eller med dator.

== Bayesiansk hypotestestet

$H_0 : theta in Theta_0 "vs" H_A : theta in Theta_A$.
Förkasta $H_0$ om $pi(Theta_0 | x) < pi(Theta_A | x)$

#image("info.png", width: 60%)

