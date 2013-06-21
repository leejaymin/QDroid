.class public Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MISC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Component for using the Barcode Scanner to read a barcode"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final SCANNER_RESULT_NAME:Ljava/lang/String; = "SCAN_RESULT"

.field private static final SCAN_INTENT:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"


# instance fields
.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private requestCode:I

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->result:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 49
    return-void
.end method


# virtual methods
.method public AfterScan(Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "result As String"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 90
    const-string v0, "AfterScan"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public DoScan()V
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->requestCode:I

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->requestCode:I

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->result:Ljava/lang/String;

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, "SCAN_RESULT"

    .line 71
    const-string v0, "BarcodeScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning result. Request code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 74
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->result:Ljava/lang/String;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->AfterScan(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void

    .line 77
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BarcodeScanner;->result:Ljava/lang/String;

    goto :goto_0
.end method
