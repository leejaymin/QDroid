.class Lelectrum2/drums/exportdata$1;
.super Ljava/lang/Object;
.source "exportdata.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/exportdata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/exportdata;


# direct methods
.method constructor <init>(Lelectrum2/drums/exportdata;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/exportdata$1;->this$0:Lelectrum2/drums/exportdata;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lelectrum2/drums/exportdata$1;->this$0:Lelectrum2/drums/exportdata;

    invoke-virtual {v0}, Lelectrum2/drums/exportdata;->SendSave()V

    .line 162
    return-void
.end method
