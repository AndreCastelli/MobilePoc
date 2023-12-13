package br.com.realizecfi.orbi.base.util;

import br.com.realizecfi.orbi.screens.BaseScreen;
import net.sourceforge.tess4j.ITesseract;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;
import net.sourceforge.tess4j.util.ImageHelper;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class ImageToTextUtil extends BaseScreen {

    private ITesseract instance;
    File imageFileName;
    Image image;
    BufferedImage buffered;

    public ImageToTextUtil() {
       instance = new Tesseract();
       instance.setLanguage("por");
    }

    public void takeScreenshot(String fileName, String path) throws IOException {
        File srcFile=driver.getScreenshotAs(OutputType.FILE);
        String filename= fileName;
        File targetFile=new File(path + filename);
        FileUtils.copyFile(srcFile,targetFile);
    }

    public String convertScreenshotToString(String fileName, String filePath) throws IOException, TesseractException {
        imageFileName = new File(fileName);
        image = ImageIO.read(imageFileName);
        buffered = (BufferedImage) image;
        instance.setDatapath(filePath);

        return instance.doOCR(ImageHelper.convertImageToGrayscale(buffered));
    }
}
