#brenden scarfone 6/18/2022
#this is version 2.1 as i overwrote the other version
$path = Get-Location

add-type -AssemblyName System.windows.forms

#handles file exists/ new file
$FileExist = Test-Path -Path "$Path/ConradyAddressBook2022.csv"
If ($FileExist -eq $false) {New-Item -Name "ConradyAddressBook2022.csv" -Path $path 
$header = "Big 10, Name, Parent, Spouse, Generation, Cell #, Mail Address, City/State/Zip, Email, Birthday"

                            Add-content -Path "$path\ConradyAddressBook2022.csv" -value $header
                            Add-content -Path "$path\ConradyAddressBook2022.csv" -value " , , , , , , , , "
                            }

Function Main {

    $iconBase64      = 'iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAB76SURBVHhe1ZsJmBxltf7fqup1enr2TGYmM5nsK0lIgAQikCDK5iUKsonLlesVUfGiCAJ60cS/4A6KVxDEfUERriyCyBYg/wSQhOzLZJ19X3p6et/q/r6euCCLoOiD53lqurvqq/q+855z3nNOVY2lf4ZMbJqvmZdsk1Vr64w26cbN0pIrpFVd0jPTpZV8OgUpnZdyOenW3ZK/QfKGpcyQNLSlQ9amk3Rg54HDV3zd5B8DwHsvXqu5c1Zq6XEKLFyoKYGgTv3denX2Ha8j5khlvnFdC+icjEiRd0RkZyuUc6Uspye8BXnvthVLS31j0nMXx5Ve3yNtfYSTbGn/fmnb81/WusevHp/wb5fXD4CVX3H1vskKXHC+zmeNC1Fmokfy8OnlcJ7PArONbpBqqzGsUb6erRKjc5zDRUCyfOm/h33nJ1S/p0RpHGAL+k4skQbmbFFhzw7dc9p7lG9vl9Y9Je3cJu143tETj3H2a5e/H4CVp7vOTR/Xe5uP0akllaoyCpurGmX4zJiNfRhTKaugwFZb0XpXgailoWHGLB1X3ACAU6jAl5wvJWe/XzpoKRCS9qBr8wRp1+y0khW2sn6vcBzZD92qXfFKRcMg+vha6YmHLtKWTT/k0KuWvx2Af39nwVlzpXV9zVQd6Q2qRLa8dgglURQlEmwxhm2+11XjKktJlIzkUdFxlGF/NoDbP1qh5Akoz1gXrzGgGUn7crJStiqfsdW5T5rZNL7fJT46zmTQ9n0qT+5Ty/yjlf12nbb8F57U2y89vV5a/6R0yzdftV6vHYB///AJuuRDT101v0lv8flUalks3lbOCmrYiSmadxQtBBVlaJ8no4rHfDpwPEqhZAYljSeYWDdub/Qt6szv4gersQwY/Mk/lFdVyFH7s5YWwZMOx7KGDz/aJ396oiq3PqNftx+rk+NQQsXDGnvoFLVd18EPBj3wO+m39w7puadrxq/88vLaALjmOrf52k/ra8R2M2fajqtkztIo34fQpNMXVT8qtX+jQk0zpGgKT8DcLcRv25lpTYINXFAoKl5U9I+6v0Aio3t15H2ztOGkqJb8rkzJUinM2ADXGfo3tiulKcdJ0IfyXCyDY3UseEw7jpovNwFrwhl6Ck94krC46+evqOMrHnyB3HSje8GHL9MHWHWF7cLWliKZlFrzHo15PepnIX1czTMo7SPG266xNHcW4QAAOcx+6OM5OSmQY5xxd6P4i5Q3scB1jRcMXiYtmM0vGHTHpSOqy1XKBXBf3hIfSgbj8lwT0qyZnAYAfRdmFbzXqxHmPHDwXmVnzZeefRqifFz62Q9fVk/n8OcryxlPuWtWna8LKy35g1IcMutJJtUKbbUVMjrk82t7JqG+oU7tL7PlRL3qecJWCemOUFZmFKudmJeVc5Tjdw4QTAgUQ8FsfDcEOPTBQdnnlmjo7riOCPqKxwocrFoXlP8hMsibGYfHmfHK+9QMP2y8JKpJrX7IlWszz+jKlEpyU+GP72n0OE7wBqTyitXavmWNOe0v5a8DcObT7peufJNWTmYwC0phzc6ArV2Q2KGEpVYKl05vSJGxiArpiPaXBGTfElbtXFclH8nI3eZRFit65kaUCHuVyzjFXG+yQ4rZE+9OKPS8pZHBbWryTVf/8og8C8KKHiVVt6IsTNr7cUBfwUl4nwkbEz6ZQF6DS13FLwqqthxuMeSCBDZ7tO8E1tJ9mtJzmCCExQy6odBq7d75IhBeGYBlt7vXfmqVVuKKZmAy6KoPF20j9e6pD6nTE9Sgr0QjWDQVCmlwcECLG2tVgbXb7/Oq/Li8nCnkbyzVsdxSPhlQwsmT61OERUGFf9sse3GTEvt75c/MUhJkgmux9oOWxk6JqY+CyP+oV8m3MvkfnBjlTQhZRVeyFXwba/kqdQIGYhmy+Qy7XnVOjcvuicsNk07xUOW5eDq9Wp3tLwDh5QFYcYc79anT9JFCSESuEvjdcHVOPeVRtfQE1TKZEOhNKIfFe72tivZ7VPH9RhU2+rTznpTq/X7c36Ouuy0NnBRT5Q2lih2bBEUy+PmUvs9R5lZWye2HKeNblLcrlUtmlBnLKn01BYJJGZW2xk63lbfsccL0FVS+2lJ6JQAUgXCVDuZVeNzW5KsScju8SlEsl8531TkjJ7eJIiIxwuqJRYOOScN79zyjtBk1Li8NwH9+snXxGZdXfN4fUnIeRUnEoz6u093sausdIXWRabzAEvhNQC0njGEIjyq9Fer9HpZolCpK/coBeOa0lHpWjMi9cK+SE+tITey8DyQ/C1M+AhAGjAwXzkLvZ7G/i+Q5CIvP6uMYPp1hvFvA6C5pluwRKKhmo6OumZs06boGdZ8a0+TvB1W9HHIs9cg5MSt7v6PB7fBPXZtKv1qn2ImomOXaedjYpCSv5z3as+uPXvDSAHzvRzd+5ORqlTXkFDzk1ZDHUi+xuG+/rfhiUl+VpSe+m1V1lSNnnV9195eobzlu/aCj6gZLWeaJMb7rbpT5KUrOIpGPglqcYuUdz0sfox62yW1+FB0CjAz526LcG8TyJXhHZS9j8ZaL7oeAQdRY77m4Sr5dKRtvrt3eoOGynHxHBxU70pU/kFTsDp+yCUfb7gWkGjLJtmrFMHhqWYKFYPBWciPhWlzY5o1lZJyHjaovTg/X3eCe94lP6C0QVwkTj3pz2g3ztnry6h9wlPylo307pLlzCUGAxRPV+fGCIqfalKZRuRFLDb8Kq+sour5aCOiT90EAMHENICQAoTAgHd+Cglh3K9sIDHYedqCg0nquNgUQgoRHBftvfk46+lPSpxlntlC9QrNmKcwhH8oNfgYLwogFfiTsrKbzPfFtv7o3JJgurDHwT6cIMbNFAf900uJncFMT033rirq/EIAlyz5o/e7x2z5XWqJGQtCUtN10M51UNIeCQdnevLxOPyxeocjXg8UGx0jn5XlF+hMKl4WVbO1R+J56jZy9HeU4+DVa30gtnMLv4W7yFh1QHfuGUTTCorJYuhdgzEoyZdIMypsDmLmRGjk4EVondMKc819Yo4Hf354pZ3JME0JViuE86aswgjelvBeeiLPjPSUqn1GhbBV4twHaac9IPYek2wivSlrs+EEW/Gvm3PASAHzpJnfVf31MJ6C8j5zXQ2k9sMxSO6NGx4C8oqDM73GNeTnZuyiA0KMcT+6lUx2+aES50kpl9uPKrSjagBX7mOxmiGikldXg1vWcMISLbycM0mn4Ww+OT/xSYhfU9DZLlQtxRVLJe/GSmVD8BAApwQWCuLPfh+OMKXxdvaKfOyj7/mkqf19KOD1EShx2Au55z0rPsP3GnFPBOgiH/T/AugN/AcD8hUE9+GjiY/UT1Igrbf+upWnNeOkphBCWHvIR+wBc9mNLvmOYAGArLuB60U7tJBGXYv1YFislTOImpi/eykIBKwPyiU589TG6O2InMvJC0P+aeEtjWviBkBbit0cdITXBCaxRVzLPJAMOPGJh2atYXBfz/zdzNwKUSXsp5jZV2KEnGMeYMHzUTli1kpoOy58W88lr3aYvf06n3enoCM5PEt89xNCzJUntowgJ5ILKEQLKOrK4aMmt5Ro8q0/e9KDCmwcg9Lz6LqBAH8ad191JrOO2z++WNuDO2T30sj8zs7w25f9cVr3D1ZwF0uRppBoAKOG6a1C+edn4VU15OYUtw8Jn/Z6GiLBLAUIWEJayDhNyz+GZex7MQoDkxXH504J++r/uaWedpSP8rmJ3WaoiFHs4d3MhrtFVJYqy34v3ZquJNa8ri2afirhY2ka+k1F93f0aeaBfqY2ANGeOtHyX9BUWQprUA7/lRHN34O+Ut1/gat48U9rizgDwAJaiEy3eaXknlk+QOtMofRCFty1lHO6eJBRHd0KghOGGdeYqL1jH+I+5Cz6o+x+57bxJExV0spr2JKkP7+3GczdfmFHJJq9aFkXk84QoQGza0fGmxsybs0YVfS9K+llImIWNQAiLviONQQ5dLGo9kx7c+/crPy7VWnXOoMqY57fMeRHcYOriPQB+JGnO8FSO2L+PLPPWSaatHE+zWzeRBUZpk0RN+kIZX9gll7uer31VZ1Fs2DQ3pfT5OJec3xAypJdSvI9WRhEUj32Fyu7amHJXlaqsLqOhR3tVN3+yendAfnUQ3jCojUJ+oyAeeEB6+rHruNR/F+d5vcSDC86l2ysSImT4KNzSDFnNMQTL8RpW38Ya+skyboHUQZf+MjIOwLVfdKdcc7WW+qnPf27Lew4E6s8raQ3K2TFB3iMMAHhbh62uGld2MKODF/g1f4mlOCHXupP4KieFhYixXQBwLL34AVhyPa63/8DrZf1XkkfYprL9f7b3mx2vVvBb5B6P6m8kbL5iaxJGNLe1CmlHnvUTtf+ItKL3UmzsSio6TJX3pKtRmhqDnWlX8wAQriDpLkDxU+4FCFwwRfq5n1S3/wAs8k8R0y7NYHtNyhsZB2BuqUI10omEkiG1/I+pqCC97uU0FFT9HatsbZ1rq206Le5SR0Mnc85tSbWc2i8LLBIn4G5Licnfx6WTCLNRAFiMiwKH+fNGFluh8Gc1uNzcq1QBP8+QXvs/kCGNWsU7OL6Eh24sp8lfL1EV2ay7PKmaR6kHHMrcGaHiLal8LaWmBSsfonJK4hYZ2NiknX8BsRWecrXeulYjDTQo2GvUEHrWX+wc0a1YopuKt+qKpBrnZOSlGzFuM2XtzSpzS9T1UY7OJueb/PvWD8G8IGi6oT4qv38BQZdoUBe+S/GVy7Vjcl4dC2g90dzcnjNpznz6RnzaGvHp+Y1eWSBjeoBUqkF5c6vWNDjPYG1zY870wAVTfADA4MsS7xtKbK06m7TiFx2vws2Oyo62ioxvrN/xiYSG8gk5eHfI76hkmS3H3N9CuhaTdoybvJ/u7lFDwIfPClAjbG0yYWAY+Q0v5DyC32P/8cZk66epNH9B/fBLV8vmk2OpZ0wI/EHypOD6r9NUrQ5q4jcd1RxFX2zu8l1D63cHxce3qflz1Nz0b+bPG11szaROKJD/MV7sZmqZ66n+KCZmkwtNvz/3ayXyfAMVA8ADEsntO1WA+a0fDOtgC2RnkLMAsYSdObLelPOLgYXQ+r3xxdYvYXOnULT+JHoM388hQSpN18QAsv1DvUp/CqYYiqnxJoj/cToyZPbXq1V6MmRJuKsOt6/D+l5Y1LjLn7vMG1xsvdvctQlqwu2sm4V3tknTqDBzlBUODVGV16bx4TNUrgNnrtUOU2oelthvMxpZgwv8B/X2Dlz//dQDZVRS/1IAHKKJuGFIW7cQ3yg6m27TrL/81HTxzmskAE148rLHYpr5NAoyZnAebTDF36yT6CohT9FDKErx892ZlMFcL2wqxX8NcbSzdLXe/3YFKG8nUP4GsLqFJ2fqaXmPzdNXhNXtszTnV/+jvJ1Sr7tcgfeVqv/Ydo0sCSv/GZS/H7JsIhOYmx97iJ3ap/jcY8pgGoI3ttiqfTM9dEGJpyh9L81rDAsHT4vKBoRcS16jP+Ez2K7RZZcpPuNy1XymV1UkOF9isvymDPx/VE7DtL3mLqWXFGke5pUVH8qeV5zhDS74NwvPJeW/3adCylHhuJx67yxT73ZL3bPj8p+ZhRBrVREqqHJFXtP2QBCegnJ0jm7WI8elC/wRaNnE/gS+1+MNg2SF2onHHp7jDS227D5XXyxTPBiX60+pH0YfOpc8vyAr31i5uqc6mpxJyp2OUgS8tSSnwnNU0F+AIMAuf/4higbK3itphc/tkd5MLz4DYjVZ4V9AbPW2pXThLmnMrzg8kIPUcjQ/DV94SCPhPkgCJ3kKxhuJ8T0vpz+r/osPqGKZo1hwQFOXEftxPMAhd/ohPz+VUwnfq2sPT/FPksbmc3XEkT/Q5IazDu95VWI4XPrBHa5OfZvKysOqMYYNdSkR92hySUgdqVL5r3PlXtmpzgsDmvvJCSr059XygK05C8bvCUShAfNQp/BRUkkLHtCymzJok/Srn45f/x8hNUsszb+ioBmnaf7lo6qnnU3Tzh4cS6sruVM6CJnt5nPTs616/GFTq7+kjC/w+htcnX2enEkNmkj7F2SvKYxMjWM+8/yuMg9Hbi1odkmJeqbuU82GmfLSBJp7kOZeZNelCWmAeqCjU9q3l37geYD9TgsN0hwzxesq0z/uLvqPG3XFGRRv5gbOxJiiWGIgl1dbSVJtnvrizb+9cHSis0t64gnpqnvI6Xe9yCDjRetec+c0onwqW3yoQHdf7ASNFDwZDX6EluDnAc0x99+Q2u0z1YKeu9/bLw+lgHleJx/VYIDYx4tUSS6tIROEF80unvB6ytnnuFfcfZW++25pMQaogHfjrqk7bLnlrsp89WrAK+ey0btp1ow6TXjzu6Rn10in/q+r4y8xxfsfZRwAPSl108c/u1YTvnBH8R2+eLBNmZJW2QU07BkpeoPpeE3D5zBf9ffNU+Ba9XwYlGuZzcu40sMA1FBTT4IEJ7PC11OOXnrnzNVf0Ox0nbIT4hoOJTTgRJRLjamvNKRhVWqEpSTRytwt3/2tvDKJvEKT+DEVW3z0NOlbFzn60mpGjYuhdqk/MUsTmxZ4m5s13FCpwtYxBXY2K/BMmUKbkqqeVF58nmiUN0WfvxFPX5iSp71b+VheycWB4qszWTPKg/8YJjV3SxvnSVs6VivZ+aI3M/4muezyO68+frlm1hWUdi0NJ7PqzqW0d3eFumnlu1nfEMOiTG88+eAPbR0z5ijnpOVb69Xos6j7dqwXxm3W+VZraNOaP8XEWR9zZV8jXThRwSciqg9UKb5om/ofX6gj6HhNn5BKu9p/9uHxh6XJ1654IEA3mVc0Xq1CI6RwN2ishQyf+zUZgUEt1ycV6x6Pn79VVr7bvfTH1+tEPCy3vVIl5rFD1UHt2jlNa08Z0aRMZfHdxDQG6rlSWnQkBgEQ80puBJLuXYydv0WjY97TjbK2vufgqm9lxz3AyFD7amW4anSuCr4q+QCpLDZRDWRAwweOyXRZS/1/EdWBUsMYtupolyPNIcrlnHx3B+T8j0/59zG4h5Dw7/cqWdOosY77x896jXLi+e7Um36ud1WW02Zg/ck+Pf97MnekUkOjhntHmbtUMQDA46XT6c1uy6iswtEYLUokzjLOhrRWgMSP6Gf8KDTG73i7A16HZaDX0sUNmHlIhXRMw1w4hQdv35vTzmX9uDk8x+E/sIaRZu8hGie6Rbqm/pRXmZak5jy8WfOvH1Ed+yvDKH8qpjjjVOndc/9Tx77lj7H3qsSyynTele7K23+hr06G0PwRLGrp0R2uDtFpdLHGfny99Pk6de+OKupxlWB95vakc2tOcY4No3PalCTmzZRetqE9GBnlLYq20V2H0+AfpOYkVz+7Qvr1EvynQvW3484PhxUP4d4V5s6vJWcalu3JUCUykY/ZjEoe8mCfT7bbrkJZkxbj99aiHJxQUNfnfRq+GHcbYsKqZumbPyLrmEfUBz+n7Ts+Pz7xn0lFjV8nfTIlq0+ln79RX6vMaEl5Vlnb0SBxuC9V0I4HQ3rsrKyONO8FRrjUxZwHS+PxFGkjqr4Vz/gelewHMYp5izI1Iq0mDS4zRIVL3MrA7AZp2w+mvxAAI7fc5OpNx0k3T5F1S6k81wUUJnqHT+6TFSqlXE6qYUOVsig4YJ7LmbeXygDnoEdHzA5oR0tKR9ZwQqygzHYOnV1QIe6qo7xDPR+oUelXOpQrlCq1GwRbyNbmAeR7jpfu2oirz5Uz+yhdEQ+qkZbjKH9cwKo4wTwaDukQ0211UircFdAAp0dROkdoHjiHdWMrc9eq6euODl6eV2wVdlmWUe6jKPw2DFBFRlq0XvrJQ6RpDGzfZ165Nze9/0LOfbur82gGFuHzB8nlcXJ6I12tPVO14WoFQL3y5ILaPVmNYBlvLK3sMMgeFm+ZV9P8+zGHq5LOOXKntclHTgqxeN+TzaqAgwq4bggyPkAhE6R5pPPW4gDu61g6kpairBoXJm5TTXn15fAk168DuNqe71saNNU2Rh1D+R7y9dgHqOZZ7oLl48mHocri+uattp7tXKyW9Zs3UfZCyJV4YBTvi7UA/u0mYdT8iQT/ILta1mh37WoNoPzTXG3RVtw3JH8NBHdLpeohdE8DpFeXVGe7nw7Sp/JAkoqwmChVyMIKVSk6Rb/ylaMKZNPq/v4MzUhXqNTcXUaBGsOLy7rUVJtUPXF71LBfTrWrqYAWrMorCxenygkf4n3tL7yy0KNliqWeo6RDS0YUeDqoDHFtj1gaOCGr0rMdtT7AMmnPKzyWUgDU/QlQ+AlhZ8raJAA4IJ+E/ZNcrM88wOmhhmR3cdV/Kf0bv6idu65VGa5yOidWVSnvhpWduVmpx6YrtCSjHUxuV0QUZgK/N6XS8qQqy8dUVpZUr2eCatqoEkmN5jGB/9istlTi1t2GMLk+1BGfnlAKq8sGIBqoMX9Ghd97lZjmUtC46oGe+jstbe6yim+5RamsuwYjuHlSu3Cj1HEOxQ89iz0gv79azukAuMVWFoOPonf6G1h6Aj9CxEo/YXbocXTh+652ipiHf8oqcImXA8C0AI49T+Hm+XqGPLiO7u4EEK1rULo6pgHq7XzIp4BdrUw4rxxVZMRXUXwu4ndH5RmbxGdClmuCtKBoo6vk9TXKzI+pf2pB5TmP9jV2KUYdvW+0QZ5KS9G2HuXCfo1UOcVn2fev9mjTFksTsdMQU8cIib5zAhrLJxWqLyc1W/LUlBWVNw9qxn6Y1dBHSMWzUkq3MNi8Q/T2bVSmdLpt0OOR1AD7AWXjg8ZNF42r+fIAsPDYXUoPrpaHgDyXcDG1pZeZ/Pixw6osj7Lb8/K0lMgZLVe2vF+FIcaqvvi8sMqukG3VMkGtSpNVKryzVYnZEbV9Nqw285rQih5F8hO1dw3XOzMl585q9c/fr957Jii5qKCSqRnZlV51sH66c6WwQep3ebkrwkW2zxNxWZZkvpODlDfPYuMAfhmNzwUcmGAIFnc3b3D5iflevm+kO4z0vID3Xh4AI8m+NSokVqsGpiq+pWzOBQSXKR80K/BQ+NASA45/rFz5n8Juy0DeeDabzwxlhbueTGv6zhqVPVet+sletecTmt0yWeGtfk0iluON3RpYQeWlGo09bSk26mikxaN2SveK9Za6PoYXH5NV9XqPYseOd6iRc7qVeVNOuZKgcsX3gJl7rFd6ahoZBeafAHLrHimmbvWwfwfecGjPC5Q38qIdLynTZrg64S20oTNoKqhI7qO4ORo3KyMH3ZuRd8ZsugDivyqsvrMgQcAyj9qqTKqCEM1LjPpyqebNs8Yn5I8H6M3T6OIOPve+K6p0lasJ3nLV4nB9WDzuS6gkV8K1XKWh+MhnsmoOeck6WI40ach97LOmpqAqupY4mUADFmNneoBP4n7Jbi6E8uYfq1p2v6SuL7nzJaW6xtUZ74CJWK3nPGKMLGHunB5HDfAgYMyFMGFa0zEHM66G3sawJN7RNCLri2VqnueYJ3BFg+yL5DXd68hCCRuQeq50i4CNkOOr8kFq9zy1hyO3o18uQOXqxu8umf8oy10Gx1R65ORDVIXERifzf2ovlSyoXA1TTpyO5w5iLIqQGKz/JAVPBPYt+uWL5ZVD4M8lmVij7VvggaUri8/RjNs1w6jPklKqjyFACYt8RtkVXUqa9jg8rMKUmEpuqlX2ppwiy2H3JgqbXX7FPmtp9HhLpZvI112s7xQun8GSmUEamFrl23tVqC5VsixEexJSLrpPObdEhT7i+LiDKqxrUp4WWFEqvPejaAdx3sOx/RD2MRQ9HaxvH7+fp/WID7+ikV89AEVxnzQtJF9WF08dIm4zv2EDhCqQHwaUALFoY4l5uMI565Q1/zx0NNYxLz/7Cop1tFLU23JTGY0uGlHiIXqPFZBXK+dFKJ59FAHxPSp0YVnz4PZcEGpFsSbA/iZp7RbY/FNYuJma3tz2KQOAdtw+iquX0uiMMNcGUl4P8W/e8vgr8upD4MWyVfPft1CJp1GaUPBDipM/Lb0Ft7uNRZAyVQo129QRZjNl2hXEqvHpm4lNL6WbZbIJ3nIp1t+KoqKiTL+JfU8BKIo2UCKb5w2XUllOJXOlAeWEHXgX+8yb0MkYoLGZf5Qyr8QNEvt7ON7RZv7RDhL46/L3ADAujjOqyollmkzpvGQK/b+5K4wiv4TJpqwYV346izqqke+AZB6eGDK4AbdtXMoFWILJZfQKejMECy56AI9q5FpJFDZM+S28pmoh4PHb/B9BBdebY0CAe+IAYN4FbD2ER8D8r1Gnvx+AP8klmjrjluJ7unWw27aJ5F5ccekHCQ0UPgmFzW0zo7wHEB7BawqEkGG/ueTp6dQD1+O2P2P8Vtw6x7GduLl51fZoLBuFKEbxoL4bpONpr807ySNwwEG8o7MNNMZvWr1WeT0B+HOhp/Z9VRPwirm4+SidWDNxbv53x2c8gPU6cISRvTQoNorMxZob8ZI30d/Gced+SGyM1BZGrwAFVgqFWwGtly4uADidcMLrsP5/FAAvJceRAzcUH56U0Q2ZV94NyfWipM0+SmlKR7zCVE+MpkdQFBDMCtNwSiEPAjIlLEz3eon0f8f/sIuB8EMJAAAAAElFTkSuQmCC'
    $iconBytes       = [Convert]::FromBase64String($iconBase64)
    $stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
    $stream.Write($iconBytes, 0, $iconBytes.Length)

$Mainwin = New-Object System.Windows.Forms.Form
$Mainwin.Text = "Conrady Address Book"
$Mainwin.Size = "400,500"

$Mainwin.Icon = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())
$contact = New-Object System.Windows.Forms.label
$contact.Text = "Please enter your contact info for next time!!!"
$contact.Size = "300,20"
$contact.Font = "Arial, 10"
$contact.Location = "70,20"

$info = New-Object System.Windows.Forms.Label
$info.Text = "First/Last Name:`n`nSpouse:`n`nCell #:`n`nMail Address:`n`nCity/State/Zip:`n`nEmail:`n`nBirthday:`n`nBig 10:`n`nRelation to the Big 10:`n`nParent:"
$info.Size = "110,310"
$info.Font = "Arial,10"
$info.Location = "1,50"

$nocommas = New-Object System.Windows.Forms.Label
$nocommas.Text = "Don't use commas anywhere in the form!!!"
$nocommas.Size = "300,20"
$nocommas.Font = "Arial,10"
$nocommas.Location = "80,375"

$Name = New-Object System.Windows.Forms.TextBox
$Name.Size = "200,10"
$Name.Location = "120,50"
$Name.Font = "Arial, 10"

$Spouse = New-Object System.Windows.Forms.TextBox
$Spouse.Size = "200,10"
$Spouse.Location = "120,80"
$Spouse.Font = "Arial, 10"

$work = New-Object System.Windows.Forms.TextBox
$work.Size = "200,10"
$work.Location = "120,110"
$work.Font = "Arial, 10"

#$house = New-Object System.Windows.Forms.TextBox
#$house.Size = "200,10"
#$house.Location = "100,110"
#$house.Font = "Arial, 10"

$Address = New-Object System.Windows.Forms.TextBox
$Address.Size = "200,10"
$Address.Location = "120,140"
$Address.Font = "Arial, 10"

$City = New-Object System.Windows.Forms.TextBox
$City.Size = "200,10"
$City.Location = "120,170"
$City.Font = "Arial, 10"

#$State = New-Object System.Windows.Forms.TextBox
#$State.Size = "200,10"
#$State.Location = "100,200"
#$State.Font = "Arial, 10"

#$Zip = New-Object System.Windows.Forms.TextBox
#$Zip.Size = "200,10"
#$Zip.Location = "100,170"
#$Zip.Font = "Arial, 10"

$email = New-Object System.Windows.Forms.TextBox
$email.Size = "200,10"
$email.Location = "120,200"
$email.Font = "Arial, 10"

$Birthday = New-Object System.Windows.Forms.TextBox
$Birthday.Size = "200,10"
$Birthday.Location = "120,230"
$Birthday.Font = "Arial, 10"


$Branch = New-Object System.Windows.Forms.ComboBox
$Branch.Size = "200,40"
$Branch.Location = "120,260"
$Branch.Font = "Arial, 10"
$Branch.Items.Add('Bob')
$Branch.Items.Add('Pat')
$Branch.Items.Add('Janet')
$Branch.Items.Add('Don')
$Branch.Items.Add('Carol')
$Branch.Items.Add('Lynda')
$Branch.Items.Add('John')
$Branch.Items.Add('Gary')
$Branch.Items.Add('Phyllis')
$Branch.Items.Add('Mike')

$gen = New-Object System.Windows.Forms.ComboBox
$gen.Size = "200,40"
$gen.Location = "120,300"
$gen.Font = "Arial, 10"
$gen.Items.Add('Big 10')
$gen.Items.Add('Kid')
$gen.Items.Add('Grandkid')
$gen.Items.Add('Great Grandkid')
$gen.Items.Add('Great-Great Grandkid')

$Parent = New-Object System.Windows.Forms.TextBox
$Parent.Size = "200,10"
$Parent.Location = "120,335"
$Parent.Font = "Arial, 10"

$import = New-Object System.Windows.Forms.Button
$import.Size = "140,40"
$import.Text = "Save"
$import.Location = "140,400"
$import.add_CLICK({SAVEDOC})

#elsm
$Mainwin.controls.Add($contact)
$Mainwin.controls.Add($info)
$Mainwin.controls.Add($Name)
$Mainwin.controls.Add($Spouse)
$Mainwin.controls.Add($Work)
$Mainwin.controls.Add($house)
$Mainwin.controls.Add($home)
$Mainwin.controls.Add($Address)
$Mainwin.controls.Add($Cell)
$Mainwin.controls.Add($City)
#$Mainwin.controls.Add($State)
#$Mainwin.controls.Add($Zip)
$Mainwin.controls.Add($Email)
$Mainwin.controls.Add($Birthday)
$Mainwin.controls.Add($Branch)
$Mainwin.controls.Add($gen)
$Mainwin.controls.Add($parent)
$Mainwin.controls.Add($nocommas)
$Mainwin.controls.Add($import)

#draw
$Mainwin.ShowDialog()

}

function SAVEDOC {
Write-host $Branch.SelectedIndex -ForegroundColor Green
$uName = $name.Text
$uWork = $Work.Text
#$uhouse = $house.text
$uAddress = $address.Text
$uCity = $City.Text
#$uState = $State.Text
#$uZip = $zip.Text
$uemail = $email.Text
$ubirthday = $birthday.Text
$uparent = $parent.Text
$uspouse = $Spouse.Text

If ($Branch.SelectedIndex -eq 0) {$ubranch = "Bob"}
If ($Branch.SelectedIndex -eq 1) {$ubranch = "Pat"}
If ($Branch.SelectedIndex -eq 2) {$ubranch = "Janet"}
If ($Branch.SelectedIndex -eq 3) {$ubranch = "Don"}
If ($Branch.SelectedIndex -eq 4) {$ubranch = "Carol"}
If ($Branch.SelectedIndex -eq 5) {$ubranch = "Lynda"}
If ($Branch.SelectedIndex -eq 6) {$ubranch = "John"}
If ($Branch.SelectedIndex -eq 7) {$ubranch = "Gary"}
If ($Branch.SelectedIndex -eq 8) {$ubranch = "Phyllis"}
If ($Branch.SelectedIndex -eq 9) {$ubranch = "Mike"}

If ($Gen.SelectedIndex -eq 0) {$ugen = "Big 10"}
If ($Gen.SelectedIndex -eq 1) {$ugen = "Kid"}
If ($Gen.SelectedIndex -eq 2) {$ugen = "Grandkid"}
If ($Gen.SelectedIndex -eq 3) {$ugen = "Great Grandkid"}
If ($Gen.SelectedIndex -eq 4) {$ugen = "Great-Great Grandkid"}

        

#       Big 10, Name, Parent, Spouse, Generation, Cell #, Mail Address, City/State/Zip, Email, Birthday
$data = "$uBranch, $uname, $uparent, $uspouse, $ugen, $uwork , $uaddress , $uCity , $uEmail, $uBirthday "
Add-content -Path "$path\ConradyAddressBook2022.csv" -value $data

ThankYouWindow

}


function ThankYouWindow {

$thankWin = new-object system.windows.forms.form
$thankWin.Text = "Thank You!"
$thankWin.Size = "270,180"

$thankL = New-Object System.Windows.Forms.label
$thankL.Text = "           Thank You! `n    Hope to stay in touch!`n`n`n You can close this window."
$thankL.Size = "200,100"
$thankl.Font = "Arial, 11"
$thankL.Location = "40,20"



#elements
$thankWin.Controls.Add($thankL)
#draw
$thankWin.ShowDialog()

Write-host "Saved information for $uname" -foregroundcolor green

$Name.text = ""
$Work.text = ""
#$House.text = ""
$Address.text = ""
$City.text = ""
#$State.text = ""
#$Zip.text = ""
$email.text = ""
$birthday.text = ""
$branch.SelectedIndex = -1
$gen.SelectedIndex = -1
$parent.text = ""
$spouse.Text = ""

}


main