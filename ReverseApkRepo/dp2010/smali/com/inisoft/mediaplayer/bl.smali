.class final Lcom/inisoft/mediaplayer/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/bj;

.field private final synthetic b:Landroid/widget/TextView;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/widget/TextView;

.field private final synthetic e:Landroid/widget/EditText;

.field private final synthetic f:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/bj;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bl;->a:Lcom/inisoft/mediaplayer/bj;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/bl;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/bl;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/bl;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/inisoft/mediaplayer/bl;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/inisoft/mediaplayer/bl;->f:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bl;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
