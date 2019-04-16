using System.Drawing;
using System;
namespace Insight
{
    public static class Utilities
    {
        public static Image ScaleImage(Image source, int MaxWidth, int MaxHeight)
        {
            float MaxRatio = MaxWidth / (float)MaxHeight;
            float ImgRatio = source.Width / (float)source.Height;

            if (source.Width > MaxWidth)
                return new Bitmap(source, new Size(MaxWidth, (int)Math.Round(MaxWidth /
                ImgRatio, 0)));

            if (source.Height > MaxHeight)
                return new Bitmap(source, new Size((int)Math.Round(MaxWidth * ImgRatio,
                0), MaxHeight));

            return source;
        }


        public static Image scalewebImage(string ImageFilename, int MaxWidth, int MaxHeight)
        {
            Image im = Image.FromFile(ImageFilename);
            return ScaleImage(im, MaxWidth, MaxHeight);
        }

    }
}