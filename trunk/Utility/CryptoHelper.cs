using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Security.Cryptography;

namespace TonSinOA.Utility
{
   public class CryptoHelper
    {
        #region 字符串加密解密

        /// <summary>
        /// 对字符串进行加密
        /// </summary>
        /// <param name="strInput">输入的字符串</param>
        /// <returns>输出加过密的字符串</returns>	
        public static string Encrypt(string strInput)
        {
            MemoryStream ms = new MemoryStream();
            Byte[] bytearrayinput = (new UTF8Encoding()).GetBytes(strInput);

            //具有随机密钥的 DES 实例
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();

            //从此实例创建 DES 加密器
            ICryptoTransform desencrypt = des.CreateEncryptor(
                new byte[] { 8, 7, 6, 9, 4, 3, 2, 1 }
                , new byte[] { 1, 2, 3, 4, 9, 6, 7, 8, 1, 2, 3, 4, 9, 6, 7, 8, 1, 2, 3, 4, 9, 6, 7, 8, 1, 2, 3, 4, 9, 6, 7, 8 });

            //创建使用 des 加密转换文件流的加密流
            CryptoStream cryptostream = new CryptoStream(ms, desencrypt, CryptoStreamMode.Write);

            //写出 DES 加密文件
            cryptostream.Write(bytearrayinput, 0, bytearrayinput.Length);
            cryptostream.FlushFinalBlock();
            cryptostream.Close();
            ms.Close();

            return System.Convert.ToBase64String(ms.ToArray());
        }

        /// <summary>
        /// 对字符串进行解密
        /// </summary>
        /// <param name="strInput">输入</param>
        /// <returns>输出</returns>
        public static string Decrypt(string strInput)
        {
            Byte[] bytearrayinput = System.Convert.FromBase64String(strInput);
            MemoryStream ms = new MemoryStream();

            //从此 des 实例创建 DES 解密器
            DESCryptoServiceProvider des1 = new DESCryptoServiceProvider();
            ICryptoTransform desdecrypt = des1.CreateDecryptor(new byte[] { 8, 7, 6, 9, 4, 3, 2, 1 }
                , new byte[] { 1, 2, 3, 4, 9, 6, 7, 8, 1, 2, 3, 4, 9, 6, 7, 8, 1, 2, 3, 4, 9, 6, 7, 8, 1, 2, 3, 4, 9, 6, 7, 8 });

            //创建加密流集合以便对传入的字节进行读取并执行 des 解密转换
            CryptoStream cryptostreamDecr = new CryptoStream(ms, desdecrypt, CryptoStreamMode.Write);
            cryptostreamDecr.Write(bytearrayinput, 0, bytearrayinput.Length);
            cryptostreamDecr.FlushFinalBlock();
            cryptostreamDecr.Close();
            ms.Close();
            //输出已解密文件的内容
            return (new UTF8Encoding()).GetString(ms.ToArray());
        }


        #endregion
    }
}
