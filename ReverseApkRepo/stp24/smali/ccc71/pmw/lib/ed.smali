.class final Lccc71/pmw/lib/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ed;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ed;)Lccc71/pmw/lib/pmw_cpu;
    .locals 1
    .parameter

    .prologue
    .line 932
    iget-object v0, p0, Lccc71/pmw/lib/ed;->a:Lccc71/pmw/lib/pmw_cpu;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 937
    new-instance v0, Lccc71/pmw/lib/ee;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ee;-><init>(Lccc71/pmw/lib/ed;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 954
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ee;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 955
    return-void
.end method