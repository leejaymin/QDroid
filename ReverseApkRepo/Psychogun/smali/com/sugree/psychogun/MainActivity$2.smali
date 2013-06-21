.class Lcom/sugree/psychogun/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/sugree/psychogun/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/psychogun/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/psychogun/MainActivity;


# direct methods
.method constructor <init>(Lcom/sugree/psychogun/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sugree/psychogun/MainActivity$2;->this$0:Lcom/sugree/psychogun/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity$2;->this$0:Lcom/sugree/psychogun/MainActivity;

    invoke-virtual {v0}, Lcom/sugree/psychogun/MainActivity;->fire()V

    .line 69
    return-void
.end method
