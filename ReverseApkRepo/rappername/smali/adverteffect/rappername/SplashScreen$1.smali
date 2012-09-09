.class Ladverteffect/rappername/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladverteffect/rappername/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ladverteffect/rappername/SplashScreen;


# direct methods
.method constructor <init>(Ladverteffect/rappername/SplashScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ladverteffect/rappername/SplashScreen$1;->this$0:Ladverteffect/rappername/SplashScreen;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ladverteffect/rappername/SplashScreen$1;->this$0:Ladverteffect/rappername/SplashScreen;

    const-class v2, Ladverteffect/rappername/GeneratorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, mainIntent:Landroid/content/Intent;
    iget-object v1, p0, Ladverteffect/rappername/SplashScreen$1;->this$0:Ladverteffect/rappername/SplashScreen;

    invoke-virtual {v1, v0}, Ladverteffect/rappername/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 33
    iget-object v1, p0, Ladverteffect/rappername/SplashScreen$1;->this$0:Ladverteffect/rappername/SplashScreen;

    invoke-virtual {v1}, Ladverteffect/rappername/SplashScreen;->finish()V

    .line 35
    return-void
.end method
