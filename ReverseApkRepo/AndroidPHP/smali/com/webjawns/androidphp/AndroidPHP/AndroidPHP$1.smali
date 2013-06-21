.class Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$1;
.super Ljava/lang/Object;
.source "AndroidPHP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;


# direct methods
.method constructor <init>(Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$1;->this$0:Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP$1;->this$0:Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;

    #calls: Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->updatePhpContent()V
    invoke-static {v0}, Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;->access$0(Lcom/webjawns/androidphp/AndroidPHP/AndroidPHP;)V

    .line 47
    return-void
.end method
