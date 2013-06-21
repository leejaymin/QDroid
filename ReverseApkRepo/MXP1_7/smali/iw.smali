.class public abstract Liw;
.super Lcom/mxtech/videoplayer/ActivityThemed;


# static fields
.field public static final ㅼ꽑嫄:Ljava/lang/String;

.field public static 弱밧:I

.field private static final 뚮젮議뚮떎怨:[I

.field private static final 留먰븷:[I


# instance fields
.field protected 洹:Lmb;

.field private 꾨뱾:Landroid/widget/AdapterView$OnItemClickListener;

.field protected 대쫫:Lcom/mxtech/widget/MaxTitleBar;

.field private 뚮Ц:Landroid/widget/TextView;

.field private 먮:Landroid/widget/TextView;

.field protected 먯껜蹂대떎:Landroid/view/Menu;

.field public 몃Ъ:Landroid/widget/ListView;

.field private 붿슧:Landroid/widget/TextView;

.field protected 쇰뒗:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const v0, 0x10064

    sput v0, Liw;->弱밧:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Liw;->뚮젮議뚮떎怨:[I

    new-array v0, v2, [I

    sput-object v0, Liw;->留먰븷:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityThemed;-><init>()V

    return-void
.end method

.method private 洹()V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Liw;->붿슧:Landroid/widget/TextView;

    if-lez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v4, v2}, Liw;->癤욱븳援(Landroid/widget/TextView;Z)V

    iget-object v2, p0, Liw;->먮:Landroid/widget/TextView;

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-direct {p0, v2, v3}, Liw;->癤욱븳援(Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2
.end method

.method private 癤욱븳援(Landroid/widget/TextView;II)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Liw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const-string v2, "image "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p3}, Liw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lhw;

    invoke-direct {v2, v1}, Lhw;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x5

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/widget/TextView;Z)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Lhw;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhw;

    array-length v3, v0

    :goto_0
    if-lt v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_1
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lhw;->癤욱븳援()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p2, :cond_2

    sget-object v1, Liw;->뚮젮議뚮떎怨:[I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v1, Liw;->留먰븷:[I

    goto :goto_1
.end method

.method static synthetic 癤욱븳援(Liw;)V
    .locals 0

    invoke-direct {p0}, Liw;->洹()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Liw;->먯꽌()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Liw;->弱밧()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lnt;->menu_delete:I

    if-ne v2, v3, :cond_0

    new-array v2, v1, [J

    iget-wide v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    aput-wide v3, v2, v5

    new-array v3, v1, [I

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aput v0, v3, v5

    invoke-virtual {p0, v2, v3}, Liw;->癤욱븳援([J[I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget v3, Lnt;->menu_rename:I

    if-ne v2, v3, :cond_1

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2, v3, v0}, Liw;->癤욱븳援(JI)V

    move v0, v1

    goto :goto_0

    :cond_1
    sget v3, Lnt;->menu_property:I

    if-ne v2, v3, :cond_2

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2, v3, v0}, Liw;->궗(JI)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget v0, Lnp;->list:I

    invoke-super {p0, p1, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->癤욱븳援(Landroid/os/Bundle;I)V

    sget v0, Lno;->titleBar:I

    invoke-virtual {p0, v0}, Liw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/MaxTitleBar;

    iput-object v0, p0, Liw;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    sget v0, Lno;->topLayout:I

    invoke-virtual {p0, v0}, Liw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    sget v0, Lno;->search:I

    invoke-virtual {p0, v0}, Liw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lix;

    invoke-direct {v1, p0}, Lix;-><init>(Liw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v0, Lmb;

    invoke-direct {v0, p0}, Lmb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Liw;->洹:Lmb;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Liw;->setDefaultKeyMode(I)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/mxtech/videoplayer/ActivityThemed;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    sget v0, Liw;->弱밧:I

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "allow_edits"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lnt;->menu_delete:I

    add-int/lit8 v2, v0, 0x1

    sget v3, Lnt;->menu_delete:I

    invoke-interface {p1, v4, v1, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    sget v1, Lnt;->menu_rename:I

    add-int/lit8 v0, v2, 0x1

    sget v3, Lnt;->menu_rename:I

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    sget v1, Lnt;->menu_property:I

    add-int/lit8 v2, v0, 0x1

    sget v2, Lnt;->menu_property:I

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Liw;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnq;->list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Liw;->먯껜蹂대떎:Landroid/view/Menu;

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Liw;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v0, Lno;->search:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Liw;->onSearchRequested()Z

    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Lno;->edit:I

    if-ne v2, v0, :cond_4

    invoke-virtual {p0}, Liw;->먯꽌()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Liw;->弱밧()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "allow_edits"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Liw;->ㅼ꽑嫄()V

    goto :goto_1

    :cond_4
    sget v0, Lno;->preference:I

    if-ne v2, v0, :cond_5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Liw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {p0, v3}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Liw;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v2, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Liw;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/App;

    invoke-virtual {v0, p0, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Lcom/mxtech/app/ActivityBase;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    sget v0, Lno;->quit:I

    if-ne v2, v0, :cond_7

    invoke-static {p0}, Lcom/mxtech/app/AppUtils;->먯꽌(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    sget v0, Lno;->edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "allow_edits"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    sget v0, Lno;->quit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "quit_button"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityThemed;->onStop()V

    invoke-virtual {p0}, Liw;->弱밧()V

    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Liw;->먯꽌()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Liw;->unregisterForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Liw;->꾨뱾:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    new-instance v1, Liy;

    invoke-direct {v1, p0}, Liy;-><init>(Liw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    invoke-virtual {p0}, Liw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->edit_bar:I

    iget-object v2, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    sget v1, Lno;->all:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Liw;->뚮Ц:Landroid/widget/TextView;

    iget-object v0, p0, Liw;->뚮Ц:Landroid/widget/TextView;

    sget v1, Lnn;->all:I

    sget v2, Lnt;->menu_all:I

    invoke-direct {p0, v0, v1, v2}, Liw;->癤욱븳援(Landroid/widget/TextView;II)V

    iget-object v0, p0, Liw;->뚮Ц:Landroid/widget/TextView;

    new-instance v1, Liz;

    invoke-direct {v1, p0}, Liz;-><init>(Liw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    sget v1, Lno;->delete:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Liw;->붿슧:Landroid/widget/TextView;

    iget-object v0, p0, Liw;->붿슧:Landroid/widget/TextView;

    sget v1, Lnn;->delete:I

    sget v2, Lnt;->menu_delete:I

    invoke-direct {p0, v0, v1, v2}, Liw;->癤욱븳援(Landroid/widget/TextView;II)V

    iget-object v0, p0, Liw;->붿슧:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Liw;->붿슧:Landroid/widget/TextView;

    new-instance v1, Lja;

    invoke-direct {v1, p0}, Lja;-><init>(Liw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    sget v1, Lno;->rename:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Liw;->먮:Landroid/widget/TextView;

    iget-object v0, p0, Liw;->먮:Landroid/widget/TextView;

    sget v1, Lnn;->rename:I

    sget v2, Lnt;->menu_rename:I

    invoke-direct {p0, v0, v1, v2}, Liw;->癤욱븳援(Landroid/widget/TextView;II)V

    iget-object v0, p0, Liw;->먮:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Liw;->먮:Landroid/widget/TextView;

    new-instance v1, Ljb;

    invoke-direct {v1, p0}, Ljb;-><init>(Liw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/mxtech/widget/ListRow;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/mxtech/widget/ListRow;

    invoke-virtual {v0}, Lcom/mxtech/widget/ListRow;->癤욱븳援()V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public 弱밧()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Liw;->먯꽌()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Liw;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    iget-object v1, p0, Liw;->꾨뱾:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v2, p0, Liw;->꾨뱾:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v2, p0, Liw;->뚮Ц:Landroid/widget/TextView;

    iput-object v2, p0, Liw;->붿슧:Landroid/widget/TextView;

    iput-object v2, p0, Liw;->먮:Landroid/widget/TextView;

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    iget-object v0, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    sget v1, Lno;->editBar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Liw;->쇰뒗:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/mxtech/widget/ListRow;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/mxtech/widget/ListRow;

    invoke-virtual {v0}, Lcom/mxtech/widget/ListRow;->궗()V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected 癤욱븳援(Ljava/lang/String;)I
    .locals 1

    const-string v0, "white"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnu;->WhiteTheme_Searchable:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lnu;->BlackTheme_Searchable:I

    goto :goto_0
.end method

.method protected abstract 癤욱븳援(JI)V
.end method

.method public 癤욱븳援(Lcom/mxtech/widget/ListRow;)V
    .locals 1

    invoke-virtual {p0}, Liw;->먯꽌()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mxtech/widget/ListRow;->癤욱븳援()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mxtech/widget/ListRow;->궗()V

    goto :goto_0
.end method

.method protected abstract 癤욱븳援([J[I)V
.end method

.method protected abstract 궗(JI)V
.end method

.method public 대쫫()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Liw;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liw;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    invoke-virtual {v0}, Lcom/mxtech/widget/MaxTitleBar;->궗()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Liw;->먯껜蹂대떎:Landroid/view/Menu;

    sget v1, Lno;->spin:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Liw;->먯껜蹂대떎:Landroid/view/Menu;

    sget v1, Lno;->spin:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    iget-object v0, p0, Liw;->먯껜蹂대떎:Landroid/view/Menu;

    sget v1, Lno;->media_scan:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final 먯꽌()Z
    .locals 1

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 쇰뒗()V
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Liw;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liw;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    invoke-virtual {v0}, Lcom/mxtech/widget/MaxTitleBar;->癤욱븳援()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Liw;->먯껜蹂대떎:Landroid/view/Menu;

    sget v1, Lno;->media_scan:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Liw;->먯껜蹂대떎:Landroid/view/Menu;

    sget v1, Lno;->spin:I

    const v2, 0x10001

    const-string v3, ""

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Liw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnp;->spin:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-array v2, v5, [I

    const v3, 0x10102d8

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Liw;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0x10300af

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v3, v2}, Liw;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/high16 v4, 0x40c0

    invoke-static {v4}, Lee;->먯꽌(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    add-int/2addr v6, v4

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    add-int/2addr v7, v4

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget v2, Lni;->rotate360:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0xd5t 0x0t 0x1t 0x1t
        0xd6t 0x0t 0x1t 0x1t
        0xd7t 0x0t 0x1t 0x1t
        0xd8t 0x0t 0x1t 0x1t
        0xd9t 0x0t 0x1t 0x1t
    .end array-data
.end method
