.class Lcom/wooboo/adlib_android/ImpressionAdView$2$1$1;
.super Ljava/lang/Object;
.source "ImpressionAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wooboo/adlib_android/ImpressionAdView$2$1;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/ImpressionAdView$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1$1;->this$2:Lcom/wooboo/adlib_android/ImpressionAdView$2$1;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 302
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 303
    return-void
.end method
