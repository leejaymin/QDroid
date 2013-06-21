.class final Lccc71/bmw/lib/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_history;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_history;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bc;->a:Lccc71/bmw/lib/bmw_history;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bc;)Lccc71/bmw/lib/bmw_history;
    .locals 1
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lccc71/bmw/lib/bc;->a:Lccc71/bmw/lib/bmw_history;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 379
    const-string v0, "rm /data/system/batterystats.bin"

    .line 381
    new-instance v1, Lccc71/utils/ai;

    new-instance v2, Lccc71/bmw/lib/bd;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/bd;-><init>(Lccc71/bmw/lib/bc;)V

    invoke-direct {v1, v0, v2}, Lccc71/utils/ai;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 397
    return-void
.end method
