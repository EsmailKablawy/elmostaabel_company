import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width:double.infinity,
      // color: Colors.green,
      child: Stack(children: [
        Positioned(
          
          child: Opacity(
            //
            opacity: 0.50,
            child: Container(
               width: double.infinity,
                height: 150,
                 
                decoration: BoxDecoration(
                  borderRadius: 
                  BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                  image: DecorationImage(image: NetworkImage('https://s3-alpha-sig.figma.com/img/7381/5032/51409a6442ebd994b11ccc51a9c69415?Expires=1694390400&Signature=C8ZHgRJUi-QHbsWJ2ebzdSrT1uiKVo6n12xON6JGXVCg561WE5CB5POaVoEEYfiZBh4daW6PanPZWkEK4MlJv1BoMSGNaxa2F9RF4~B-3CqPKP9-26zVad~0yOZGZgulZtw5T~sohdb~40taILoENO2Kiqg7Nz7gVnnXS4Q0mTldS1miNvl6L5K0FO8YlEOlDzKX0zieUu1TJGEW6zfDkyXO68pOrHW5SYrLOHIJkK9u-PZi35kI8ASEWvwM3iidxfICeehu2PGQRM4pSP5~Dqy6K3DQgfixEB9IRyBU6IpFdyMnzDov6x~PoRlhtvAJHEK8BgFHg-eznll6cBGKXQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),fit: BoxFit.fill)
                )),
                ),
        ),
        
        //appbar
        Container(
          width: double.infinity,
          height: 96,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset('assets/images/Arrow - Left-white.png'),
              ),
              const Text(
                'حسابي',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,),),
                SizedBox(width: 20,),
          ],),
        ),
        
        //profilePhoto
        Positioned(
          bottom: 70,
          left: 155,
          child: Container(
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              color: Colors.black.withOpacity(0.14000000059604645),
              image: DecorationImage(image: const NetworkImage('https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/361633648_105024769337348_780824407917047749_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=_aabLXif8akAX_Vh4-p&_nc_ht=scontent.fcai19-6.fna&oh=00_AfAJLOTsTVGWvaHP0Mxp_o_J1g0_Bu2eF086JEI4cZuuRg&oe=64F9CDFB'),fit: BoxFit.cover),
              shape: const OvalBorder(
                side: BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Colors.white,),),),
                
                ),
        ),
        //name
        const Positioned(
          bottom: 20,
          left: 150,
          child: Text(
            'علي عطوان',
            style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w700,
            ),),),
            //email
            const Positioned(
              bottom: 0,
              left: 130,
              child: Text('aliatwan02@gmail.com',
              style: TextStyle(
                 color: Color(0xFF7D848D),
                  fontSize: 14,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,),),
            ),
      ],)
    );
  }
}