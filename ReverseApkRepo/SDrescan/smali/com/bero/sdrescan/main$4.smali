.class Lcom/bero/sdrescan/main$4;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bero/sdrescan/main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bero/sdrescan/main;


# direct methods
.method constructor <init>(Lcom/bero/sdrescan/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bero/sdrescan/main$4;->this$0:Lcom/bero/sdrescan/main;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, i:Landroid/content/Intent;
    const-string v1, "http://www.rosseaux.net/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/bero/sdrescan/main$4;->this$0:Lcom/bero/sdrescan/main;

    invoke-virtual {v1, v0}, Lcom/bero/sdrescan/main;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/bero/sdrescan/main$4;->this$0:Lcom/bero/sdrescan/main;

    invoke-virtual {v1}, Lcom/bero/sdrescan/main;->finish()V

    .line 67
    return-void
.end method
