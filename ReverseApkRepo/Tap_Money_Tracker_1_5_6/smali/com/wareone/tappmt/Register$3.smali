.class Lcom/wareone/tappmt/Register$3;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Register;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Register$3;->this$0:Lcom/wareone/tappmt/Register;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wareone/tappmt/Register$3;->this$0:Lcom/wareone/tappmt/Register;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Register;->finish()V

    .line 157
    return-void
.end method
