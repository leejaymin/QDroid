.class final Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;->b:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;->a:I

    return-void
.end method


# virtual methods
.method public final onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;->a:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;->b:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->c()V

    .line 66
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;->a:I

    .line 68
    :cond_0
    return-void
.end method
