.class Lcom/google/ads/ae$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/ads/ae$c;->b:Landroid/webkit/WebView;

    .line 175
    iput-boolean p2, p0, Lcom/google/ads/ae$c;->a:Z

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/ads/ae$c;->b:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lcom/google/ads/ae$c;->a:Z

    invoke-static {v0, v1}, Lcom/google/ads/ae;->a(Landroid/webkit/WebView;Z)V

    .line 181
    return-void
.end method
