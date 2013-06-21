.class Lexam/service/NapEnd$1;
.super Ljava/lang/Object;
.source "NapEnd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/NapEnd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/NapEnd;


# direct methods
.method constructor <init>(Lexam/service/NapEnd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/NapEnd$1;->this$0:Lexam/service/NapEnd;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 22
    iget-object v0, p0, Lexam/service/NapEnd$1;->this$0:Lexam/service/NapEnd;

    invoke-virtual {v0}, Lexam/service/NapEnd;->finish()V

    .line 23
    return-void
.end method
