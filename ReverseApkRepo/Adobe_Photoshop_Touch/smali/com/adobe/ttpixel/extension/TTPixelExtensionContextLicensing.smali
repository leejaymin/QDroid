.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;
.super Lcom/adobe/fre/FREContext;


# static fields
.field private static final c:[B


# instance fields
.field private a:Lcom/google/android/vending/licensing/d;

.field private b:Lcom/google/android/vending/licensing/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->c:[B

    return-void

    :array_0
    .array-data 0x1
        0xc4t
        0x89t
        0x24t
        0x48t
        0x71t
        0xa3t
        0xd3t
        0x7et
        0x61t
        0xc4t
        0x3et
        0x7ft
        0x1ct
        0x1ft
        0x12t
        0x9et
        0x3t
        0xfdt
        0xd9t
        0xat
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->a:Lcom/google/android/vending/licensing/d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/adobe/fre/FREObject;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/vending/licensing/a;

    new-instance v4, Lcom/google/android/vending/licensing/l;

    sget-object v5, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->c:[B

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/vending/licensing/l;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v0, v4}, Lcom/google/android/vending/licensing/a;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/h;)V

    new-instance v2, Lcom/google/android/vending/licensing/f;

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC9aYGe3xYyKGw8sXRQurD5Eg2eH07V2dsQaTJ46He/8XRUgwhqQ9O/Ug1RXCa/9nD9RhNfJxfTphZDCgsteNhWHplRlMBHCErABW8r2dyNS1mItSZznmx5wlgMrcgQ79+Wb+ZKV1A6r6giVGZ4f/CbmonOaj227FhJ36gS9b1XewIDAQAB"

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/vending/licensing/f;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    new-instance v0, Lcom/google/android/vending/licensing/d;

    invoke-direct {v0, p0}, Lcom/google/android/vending/licensing/d;-><init>(Lcom/adobe/fre/FREContext;)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->a:Lcom/google/android/vending/licensing/d;

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->a:Lcom/google/android/vending/licensing/d;

    invoke-virtual {v0, v2}, Lcom/google/android/vending/licensing/f;->a(Lcom/google/android/vending/licensing/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/f;->a()V

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->b:Lcom/google/android/vending/licensing/f;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->a:Lcom/google/android/vending/licensing/d;

    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "c"

    new-instance v2, Lcom/adobe/ttpixel/extension/a/a;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/a/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
