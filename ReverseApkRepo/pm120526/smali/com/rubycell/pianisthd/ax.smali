.class final Lcom/rubycell/pianisthd/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SingleRowActivity;

.field private final synthetic b:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SingleRowActivity;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ax;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    iput-object p2, p0, Lcom/rubycell/pianisthd/ax;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ax;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SingleRowActivity;->e:Landroid/content/SharedPreferences$Editor;

    const-string v1, "FIRST_START"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/ax;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
