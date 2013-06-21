.class Lcom/pgmsoft/wifinder/splash$1;
.super Ljava/lang/Object;
.source "splash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/splash;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/splash;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/splash$1;->this$0:Lcom/pgmsoft/wifinder/splash;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/splash$1;->this$0:Lcom/pgmsoft/wifinder/splash;

    const-class v2, Lcom/pgmsoft/wifinder/scan;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, nowyIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pgmsoft/wifinder/splash$1;->this$0:Lcom/pgmsoft/wifinder/splash;

    invoke-virtual {v1, v0}, Lcom/pgmsoft/wifinder/splash;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v1, p0, Lcom/pgmsoft/wifinder/splash$1;->this$0:Lcom/pgmsoft/wifinder/splash;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/splash;->finish()V

    .line 33
    return-void
.end method
