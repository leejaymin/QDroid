.class final Lcom/tapjoy/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/DownloadVirtualGood;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/b;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-virtual {v0}, Lcom/tapjoy/DownloadVirtualGood;->finish()V

    return-void
.end method
