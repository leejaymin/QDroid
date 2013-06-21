.class final Lccc71/bmw/lib/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dq;->a:Lccc71/bmw/lib/bmw_status;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/dq;)Lccc71/bmw/lib/bmw_status;
    .locals 1
    .parameter

    .prologue
    .line 771
    iget-object v0, p0, Lccc71/bmw/lib/dq;->a:Lccc71/bmw/lib/bmw_status;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 776
    new-instance v0, Lccc71/bmw/lib/dr;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/dr;-><init>(Lccc71/bmw/lib/dq;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 795
    invoke-virtual {v0, v1}, Lccc71/bmw/lib/dr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 796
    return-void
.end method
