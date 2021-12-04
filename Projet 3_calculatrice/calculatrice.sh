#! /bin/bash  
addition(){
   let sum=$(($int1+$int2))
   echo "Le résultat est : " $sum
}
multiplication(){
   let produit=$(($int1*$int2))
   echo "Le résultat est : " $produit
}
soustraction(){
  let  diff=$(($int1-$int2))
   echo "Le résultat est : " $diff
}
division(){
   if [$int2 -eq 0];
   then 
   echo "Le quotient  est nul!!"
   read -p " Ecrivez un autre quotient" int2 
   else 
   let div=$(($int1/$int2))
   echo "Le résultat est : "  
   echo "scale=2 ;(($int1/$int2))" |bc -l
   fi
}

echo "Voulez vous commencer le calcul? [o/n]  "
read  calcul

if  [ "$calcul" = "o" -o "$calcul" = "O" ];
then

read -p "Entrez un numéro : " int1
read -p "Entrez un numéro : " int2
read -p "Entrer a pour addition, m pour multiplication, s pour soustraction , d pour division:" n 
add $int1 $int2 $chainen

case $n in  
a)
addition;;

m)
multiplication;;

s)
soustraction;;

d)
division ;;

*)
echo "opération inexistante "
g=$((2#1111))
echo $g
esac


else  
echo " Au revoir" 
fi
