.class final Lccc71/pmw/lib/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/av;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/av;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/aw;->a:Lccc71/pmw/lib/av;

    iput p2, p0, Lccc71/pmw/lib/aw;->b:I

    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/aw;)Lccc71/pmw/lib/av;
    .locals 1
    .parameter

    .prologue
    .line 2076
    iget-object v0, p0, Lccc71/pmw/lib/aw;->a:Lccc71/pmw/lib/av;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2081
    sput-boolean v2, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 2082
    sput-boolean v2, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 2083
    sput-boolean v2, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    .line 2085
    new-instance v0, Lccc71/pmw/lib/ax;

    iget v1, p0, Lccc71/pmw/lib/aw;->b:I

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/ax;-><init>(Lccc71/pmw/lib/aw;I)V

    .line 2096
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 2097
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2098
    return-void
.end method
