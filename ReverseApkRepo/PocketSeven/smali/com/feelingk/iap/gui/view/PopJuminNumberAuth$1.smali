.class Lcom/feelingk/iap/gui/view/PopJuminNumberAuth$1;
.super Ljava/lang/Object;
.source "PopJuminNumberAuth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->InflateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth$1;->this$0:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth$1;->this$0:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    #getter for: Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->access$0(Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;->onAuthDialogCancelButtonClick()V

    .line 47
    return-void
.end method