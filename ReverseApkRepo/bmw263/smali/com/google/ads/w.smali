.class final Lcom/google/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/google/ads/internal/o;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/o;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/ads/w;->a:Lcom/google/ads/internal/o;

    .line 60
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v1, "u"

    const-string v2, "market://details?id=com.google.android.apps.plus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/google/ads/w;->a:Lcom/google/ads/internal/o;

    new-instance v2, Lcom/google/ads/internal/p;

    const-string v3, "intent"

    invoke-direct {v2, v3, v0}, Lcom/google/ads/internal/p;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/o;Lcom/google/ads/internal/p;)V

    .line 70
    return-void
.end method
