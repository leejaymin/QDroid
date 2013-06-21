.class Lelectrum2/drums/electrum$12;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$12;->this$0:Lelectrum2/drums/electrum;

    .line 2148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2153
    iget-object v0, p0, Lelectrum2/drums/electrum$12;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->openOptionsMenu()V

    .line 2155
    return-void
.end method
