.class Lcom/feelingk/iap/gui/parser/ParserXML$13;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$13;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$13;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinFormDialogPopupClick(I)V

    .line 3859
    return-void
.end method
