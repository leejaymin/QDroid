.class final Lcom/rubycell/pianisthd/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/ui/d;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/e;->a:Lcom/rubycell/pianisthd/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/e;->a:Lcom/rubycell/pianisthd/ui/d;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/d;->dismiss()V

    return-void
.end method