.class Lexam/service/DetectSaveZone$1;
.super Ljava/lang/Object;
.source "DetectSaveZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/DetectSaveZone;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/DetectSaveZone;


# direct methods
.method constructor <init>(Lexam/service/DetectSaveZone;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/DetectSaveZone$1;->this$0:Lexam/service/DetectSaveZone;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/service/DetectSaveZone$1;)Lexam/service/DetectSaveZone;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lexam/service/DetectSaveZone$1;->this$0:Lexam/service/DetectSaveZone;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 18
    new-instance v0, Lexam/service/DetectSaveZone$1$1;

    invoke-direct {v0, p0}, Lexam/service/DetectSaveZone$1$1;-><init>(Lexam/service/DetectSaveZone$1;)V

    .line 24
    const-wide/16 v1, 0x2710

    .line 18
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    return-void
.end method
