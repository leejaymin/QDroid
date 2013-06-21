.class Lcom/feelingk/iap/gui/parser/ParserXML$24;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$24;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 4064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4068
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthCancer()V

    .line 4071
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Ljava/lang/Boolean;)V

    .line 4072
    return-void
.end method
