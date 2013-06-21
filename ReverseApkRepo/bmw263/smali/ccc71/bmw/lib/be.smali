.class final Lccc71/bmw/lib/be;
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
    iput-object p1, p0, Lccc71/bmw/lib/be;->a:Lccc71/bmw/lib/bmw_history;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/be;)Lccc71/bmw/lib/bmw_history;
    .locals 1
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lccc71/bmw/lib/be;->a:Lccc71/bmw/lib/bmw_history;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 412
    new-instance v0, Lccc71/bmw/lib/bf;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bf;-><init>(Lccc71/bmw/lib/be;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 429
    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 430
    return-void
.end method
