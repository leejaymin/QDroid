.class Lcom/saybaby/hospital/FindHospitalView$2;
.super Ljava/lang/Object;
.source "FindHospitalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/saybaby/hospital/FindHospitalView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saybaby/hospital/FindHospitalView;


# direct methods
.method constructor <init>(Lcom/saybaby/hospital/FindHospitalView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/saybaby/hospital/FindHospitalView$2;->this$0:Lcom/saybaby/hospital/FindHospitalView;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/saybaby/hospital/FindHospitalView$2;->this$0:Lcom/saybaby/hospital/FindHospitalView;

    iget-object v0, v0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 109
    return-void
.end method
