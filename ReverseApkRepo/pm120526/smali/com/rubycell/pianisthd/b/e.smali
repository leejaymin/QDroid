.class final Lcom/rubycell/pianisthd/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/b/c;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/b/e;->a:Lcom/rubycell/pianisthd/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
