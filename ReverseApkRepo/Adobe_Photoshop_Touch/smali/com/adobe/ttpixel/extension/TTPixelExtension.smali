.class public Lcom/adobe/ttpixel/extension/TTPixelExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static final AS_FLASH_DISPLAY_BITMAPDATA_HEIGHT:Ljava/lang/String; = "height"

.field public static final AS_FLASH_DISPLAY_BITMAPDATA_WIDTH:Ljava/lang/String; = "width"

.field public static final AS_FLASH_GEOM_POINT_X:Ljava/lang/String; = "x"

.field public static final AS_FLASH_GEOM_POINT_Y:Ljava/lang/String; = "y"

.field public static final AS_FLASH_GEOM_RECTANGLE_HEIGHT:Ljava/lang/String; = "height"

.field public static final AS_FLASH_GEOM_RECTANGLE_WIDTH:Ljava/lang/String; = "width"

.field public static final AS_FLASH_GEOM_RECTANGLE_X:Ljava/lang/String; = "x"

.field public static final AS_FLASH_GEOM_RECTANGLE_Y:Ljava/lang/String; = "y"

.field public static final AS_FLASH_UTILS_BYTEARRAY:Ljava/lang/String; = "flash.utils.ByteArray"

.field public static final AS_FLASH_UTILS_BYTEARRAY_CLEAR:Ljava/lang/String; = "clear"

.field public static final AS_FLASH_UTILS_BYTEARRAY_LENGTH:Ljava/lang/String; = "length"

.field public static final AS_FLASH_UTILS_BYTEARRAY_POSITION:Ljava/lang/String; = "position"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TTPixelExtensionAndroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/adobe/ttpixel/extension/TTPixelExtension;->initIDs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextSS;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextSS;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameraroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;-><init>()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextEmail;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextEmail;-><init>()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "impexp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;-><init>()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utils"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextUtils;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextUtils;-><init>()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera[static]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraStatic;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraStatic;-><init>()V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;-><init>()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "printer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextPrinter;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextPrinter;-><init>()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigdata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBigData;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBigData;-><init>()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "httpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextHttpd;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextHttpd;-><init>()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "licensing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;-><init>()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;-><init>()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bonjour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;-><init>()V

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
