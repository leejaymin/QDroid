.class final Lccc71/pmw/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/a/j;

.field private final synthetic b:Lccc71/pmw/a/a;


# direct methods
.method constructor <init>(Lccc71/pmw/a/j;Lccc71/pmw/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/k;->a:Lccc71/pmw/a/j;

    iput-object p2, p0, Lccc71/pmw/a/k;->b:Lccc71/pmw/a/a;

    .line 1993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1998
    iget-object v0, p0, Lccc71/pmw/a/k;->b:Lccc71/pmw/a/a;

    iget-object v0, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 1999
    return-void
.end method
