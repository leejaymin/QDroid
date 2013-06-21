.class final Lccc71/pmw/lib/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/dv;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dv;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dw;->a:Lccc71/pmw/lib/dv;

    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;
    .locals 1
    .parameter

    .prologue
    .line 1652
    iget-object v0, p0, Lccc71/pmw/lib/dw;->a:Lccc71/pmw/lib/dv;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1657
    new-instance v0, Lccc71/pmw/lib/dx;

    invoke-direct {v0, p0, p2}, Lccc71/pmw/lib/dx;-><init>(Lccc71/pmw/lib/dw;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1809
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/dx;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 1810
    return-void
.end method
