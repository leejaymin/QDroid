.class final Lccc71/pmw/pro/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/pro/pmw_icon_package_list;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lccc71/pmw/pro/pmw_icon_package_list;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/pro/d;->a:Lccc71/pmw/pro/pmw_icon_package_list;

    iput-object p2, p0, Lccc71/pmw/pro/d;->b:Landroid/app/Activity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lccc71/pmw/pro/d;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    return-void
.end method
