function output = p5q8()
iterations = 10:10:300;
cost_1 = [6.2165 5.1308 4.2209 3.7598 3.4935 3.3086 3.1694 3.0575 2.9643 2.8861 2.8205 2.7629 2.7118 2.666 2.6246 2.5871 2.553 2.5216 2.4931 2.4666 2.4418 2.4186 2.3969 2.3762 2.3567 2.3233 2.2807 2.2415 2.2081 2.1774];
cost_2 = [5.549 4.5481 3.6355 3.1922 2.9302 2.7606 2.6358 2.5377 2.458 2.3917 2.3353 2.288  2.247  2.2105  2.1784  2.1497  2.1236  2.0997 2.0777 2.0574 2.0385 2.021 2.0044 1.989 1.9743 1.9486 1.915 1.8858 1.8613  1.8399];
cost_3 = [5.1548 4.1662 3.2843 2.9076 2.6735 2.5188 2.4086 2.3242 2.2566  2.2  2.1514  2.1098  2.0738  2.0424  2.0146  1.9899  1.9677  1.9476  1.9288  1.9117  1.896  1.8814  1.8677  1.855  1.8424  1.8203  1.7945  1.7715  1.752  1.7351];
cost_4 = [4.8737 3.9718 2.9975 2.6149 2.387 2.2395 2.1371 2.0608 1.9988  1.9459  1.9038  1.8688  1.8385  1.812  1.7889  1.7684  1.7498  1.733  1.7176  1.7034  1.6905  1.6785  1.6674  1.6571  1.6475  1.6312  1.611  1.5923  1.5759  1.5616];
cost_5 = [4.655 3.7267 2.8417 2.4834 2.2766 2.1433 2.0474 1.9731 1.9143  1.8671  1.8284  1.7956  1.7676  1.7435  1.7222  1.7032  1.6861  1.6706  1.6565  1.6434  1.6312  1.6196  1.6091  1.5996  1.5909  1.5761  1.5579  1.5409  1.5262  1.5135];
cost_6 = [4.4758 3.6474 2.7176 2.3761 2.1805 2.0501 1.9575 1.8883 1.8342  1.7909  1.7549  1.7247  1.699  1.6764  1.6564  1.639  1.6237  1.6099  1.5975  1.5862  1.5758  1.5662  1.5574  1.5492  1.5416  1.5288  1.5132  1.499  1.4865  1.4758];
cost_7 = [4.3241 3.4947 2.6488 2.3259 2.1367 2.0111 1.9221 1.857 1.8067  1.7658  1.7313  1.7018  1.6761  1.6534  1.6333  1.6156  1.6  1.5861  1.5737  1.5622  1.5512  1.5409  1.5313  1.5223  1.5135  1.4975  1.479  1.4646  1.4527  1.4426];
cost_8 = [4.1924 3.2749 2.4351 2.1465 1.9835 1.876 1.7975 1.7378 1.6916  1.6545  1.6234  1.597  1.5744  1.5556  1.5396  1.5255  1.5131  1.5019  1.4918  1.4827  1.4744  1.4669  1.4599  1.4535  1.4476  1.4377  1.4259  1.4153  1.4061  1.3981];
cost_9 = [4.0762 3.3152 2.404 2.087 1.9051 1.7898 1.7109 1.652 1.6065  1.5707  1.5416  1.517  1.4965  1.479  1.4638  1.4505  1.4387  1.4281  1.4186  1.4102  1.4026  1.3956  1.3893  1.3835  1.3781  1.3691  1.3586  1.3492  1.3411  1.3342];
cost_10 = [3.9721 3.0675 2.2359 1.9763 1.8305 1.731 1.6567 1.5996 1.5565  1.5228  1.4959  1.4735  1.4544  1.4378  1.4234  1.4104  1.3986  1.388  1.3785  1.3703  1.363  1.3564  1.3504  1.3449  1.3397  1.3313  1.3215  1.3128  1.305  1.2984];
cost_11 = [3.8779 3.0728 2.287 2.0138 1.8532 1.748 1.6703 1.6133 1.5709  1.5356  1.5082  1.4854  1.4657  1.4486  1.4336  1.4202  1.408  1.3968  1.3864  1.377  1.3685  1.361  1.3543  1.3481  1.3423  1.3327  1.3222  1.3134  1.3063  1.3002];
cost_12 = [3.7918 3.0184 2.1864 1.9181 1.7658 1.6713 1.6047 1.5546 1.515  1.4825  1.456  1.4342  1.4155  1.3992  1.3845  1.3715  1.3592  1.3486  1.3395  1.3313  1.3241  1.3174  1.3116  1.3063  1.3015  1.2936  1.2847  1.2772  1.2708  1.2655];
cost_13 = [3.7126 2.9424 2.0876 1.8314 1.6927 1.5931 1.5227 1.4712 1.4324  1.4015  1.3763  1.3545  1.3342  1.3155  1.3006  1.2887  1.2784  1.2694  1.2615  1.2547  1.2486  1.2431  1.2382  1.2337  1.2296  1.2229  1.215  1.2082  1.2022  1.197];
cost_14 = [3.6393 2.9128 2.0582 1.7946 1.6567 1.5684 1.5061 1.4589 1.4221  1.3927  1.3687  1.3487  1.3318  1.3172  1.3043  1.293  1.2824  1.2716  1.2607  1.2523  1.245  1.2392  1.2341  1.2295  1.2254  1.2187  1.211  1.2044  1.1988  1.1941];
cost_15 = [3.571 2.9581 2.1002 1.8239 1.6705 1.5767 1.5117 1.4645 1.4273  1.3975  1.3734  1.3536  1.337  1.3227  1.3103  1.2993  1.2895  1.2805  1.2717  1.2621  1.2496  1.2372  1.2259  1.2181  1.2136  1.2073  1.2004  1.1943  1.1892  1.1847];
cost_16 = [3.5071 2.7078 1.9156 1.6825 1.5505 1.469 1.4123 1.3704 1.3382  1.3127  1.2923  1.2755  1.2616  1.2498  1.2395  1.2307  1.223  1.2163  1.2105  1.2053  1.2007  1.1966  1.1929  1.1896  1.1865  1.1816  1.176  1.1712  1.1672  1.1639];
cost_17 = [3.4471 2.8356 2.0497 1.7946 1.6548 1.5718 1.5149 1.4726 1.4399  1.414  1.3928  1.3749  1.3599  1.3469  1.3353  1.3249  1.3155  1.3068  1.2986  1.2905  1.2836  1.277  1.2706  1.2641  1.2569  1.242  1.2283  1.2189  1.2122  1.2075];
cost_18 = [3.3905 2.702 1.878 1.6236 1.4974 1.4193 1.3643 1.3238 1.2932  1.2689  1.2495  1.2337  1.2205  1.2093  1.1995  1.1909  1.1837  1.1776  1.1722  1.1675  1.1632  1.1594  1.1561  1.1531  1.1503  1.1458  1.1405  1.1363  1.1328  1.1299];
cost_19 = [3.337 2.629 1.8414 1.6112 1.4862 1.4064 1.3508 1.3098 1.2781  1.2536  1.2345  1.2191  1.2064  1.1958  1.1867  1.1788  1.1719  1.1659  1.1607  1.156  1.1519  1.1481  1.1447  1.1417  1.1391  1.1348  1.13  1.1261  1.1229  1.1202];
cost_20 = [3.2863 2.6312 1.8501 1.5959 1.465 1.3851 1.3299 1.289 1.2594  1.2366  1.2183  1.2034  1.191  1.1806  1.1718  1.1641  1.1574  1.1514  1.1458  1.1404  1.1359  1.1321  1.1288  1.1257  1.123  1.1189  1.1145  1.111  1.1082  1.1059];
cost_21 = [3.238 2.5458 1.7577 1.5277 1.415 1.3451 1.297 1.2613 1.2339  1.2118  1.1941  1.1792  1.1674  1.1577  1.1495  1.1424  1.1363  1.131  1.1263  1.1223  1.1187  1.1155  1.1126  1.11  1.1077  1.1039  1.0997  1.0962  1.0931  1.0904];
cost_22 = [3.192 2.5884 1.8111 1.5756 1.4499 1.3746 1.3237 1.2871 1.2595  1.238  1.2209  1.2071  1.1959  1.1865  1.1787  1.172  1.1663  1.1613  1.1569  1.153  1.1496  1.1465  1.1436  1.1412  1.1391  1.1353  1.1313  1.1281  1.1254  1.1232];
cost_23 = [3.148 2.489 1.7003 1.478 1.3628 1.2926 1.2455 1.2113 1.1857  1.1657  1.1498  1.1371  1.1266  1.1178  1.1103  1.104  1.0986  1.0938  1.0897  1.0861  1.0829  1.08  1.0775  1.0752  1.0731  1.0697  1.066  1.063  1.0606  1.0587];
cost_24 = [3.1059 2.442 1.7002 1.4865 1.3733 1.3018 1.2548 1.2209 1.1947  1.1744  1.1583  1.1452  1.1345  1.1257  1.1182  1.112  1.1065  1.1018  1.0978  1.0943  1.0912  1.0885  1.0862  1.0841  1.0821  1.079  1.0757  1.073  1.0708  1.0692];
cost_25 = [3.0655 2.4037 1.6557 1.4625 1.3582 1.2929 1.2469 1.2141 1.1892  1.1696  1.1539  1.1411  1.1303  1.1208  1.1126  1.1054  1.0989  1.093  1.0867  1.0816  1.0777  1.0743  1.071  1.0678  1.0643  1.0591  1.0549  1.0519  1.0497  1.048];
cost_26 = [3.0267 2.4268 1.6005 1.4012 1.3005 1.2383 1.1961 1.1656 1.1425  1.1242  1.1098  1.0983  1.0889  1.0807  1.0734  1.0667  1.0616  1.0574  1.0538  1.0508  1.0482  1.0459  1.0439  1.0421  1.0405  1.038  1.0353  1.0332  1.0316  1.0302];
cost_27 = [2.9894 2.4593 1.7525 1.5529 1.4497 1.3848 1.3419 1.311 1.2875  1.2689  1.2535  1.2404  1.2289  1.2185  1.2085  1.1992  1.1897  1.1813  1.1744  1.1689  1.1643  1.1599  1.1557  1.1515  1.1475  1.1397  1.1316  1.1212  1.1098  1.1063];
cost_28 = [2.9534 2.3274 1.5813 1.3768 1.2763 1.2147 1.1732 1.1435 1.1214  1.1043  1.0909  1.0801  1.0712  1.0638  1.0577  1.0526  1.0483  1.0446  1.0414  1.0386  1.0362  1.0342  1.0323  1.0307  1.0292  1.027  1.0246  1.0228  1.0214  1.0203];
cost_29 = [2.9187 2.3002 1.5569 1.369 1.2737 1.2142 1.1731 1.1431 1.1206  1.1031  1.0892  1.0782  1.0694  1.0621  1.056  1.0508  1.0464  1.0425  1.0391  1.0362  1.0337  1.0314  1.0294  1.0277  1.0262  1.0237  1.0212  1.0194  1.0181  1.017];
cost_30 = [2.8851 2.3673 1.6907 1.4833 1.3816 1.3179 1.2702 1.2296 1.2031  1.1846  1.1705  1.1593  1.15  1.1422  1.1353  1.1296  1.1247  1.1203  1.1166  1.1135  1.1108  1.1083  1.1059  1.1035  1.1011  1.0972  1.0928  1.0887  1.0849  1.0815];

costs = [cost_1; cost_2; cost_3; cost_4; cost_5; cost_6; cost_7; cost_8; cost_9; cost_10; cost_11; cost_12; cost_13; cost_14; cost_15; cost_16; cost_17; cost_18; cost_19; cost_20; cost_21; cost_22; cost_23; cost_24; cost_25; cost_26; cost_27; cost_28; cost_29; cost_30];

hold all
% for i = 1:30
% % 	plot3(repmat(i*10,1,30),iterations,costs(i,:))
%     scatter3(repmat(i*10,1,30),iterations,costs(i,:))
% % 	scatter3(repmat(i*10,1,30),iterations,costs(i,:),'filled')
% end

perplexities = []
for i = 1:30
    perplexities = [perplexities; repmat(i*10,1,30)]
end

surf(perplexities,repmat(iterations,30,1),costs)

grid on
title 'Perplexities and costs for 300 iterations'
xlabel('Perplexities')
ylabel('Iterations')
zlabel('Costs')
end
