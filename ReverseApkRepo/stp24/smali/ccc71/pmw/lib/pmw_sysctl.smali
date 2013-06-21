.class public Lccc71/pmw/lib/pmw_sysctl;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static b:I


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private E:Landroid/widget/TextView$OnEditorActionListener;

.field private F:Landroid/view/View$OnFocusChangeListener;

.field private G:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private H:Landroid/os/Handler;

.field private a:Ljava/util/HashMap;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private j:Z

.field private k:F

.field private l:I

.field private m:Landroid/widget/TableRow$LayoutParams;

.field private n:Landroid/widget/TableRow$LayoutParams;

.field private o:Landroid/view/View;

.field private p:Lccc71/pmw/b/a/a;

.field private q:Ljava/util/ArrayList;

.field private r:Ljava/util/TreeMap;

.field private s:Ljava/lang/Object;

.field private t:Lccc71/utils/android/a;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/widget/TextView$OnEditorActionListener;

.field private w:Landroid/view/View$OnFocusChangeListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const v0, -0x777723

    sput v0, Lccc71/pmw/lib/pmw_sysctl;->b:I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_sysctl;->j:Z

    .line 64
    const/high16 v0, 0x4180

    iput v0, p0, Lccc71/pmw/lib/pmw_sysctl;->k:F

    .line 69
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->q:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->r:Ljava/util/TreeMap;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->s:Ljava/lang/Object;

    .line 94
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->t:Lccc71/utils/android/a;

    .line 211
    new-instance v0, Lccc71/pmw/lib/og;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/og;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->u:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lccc71/pmw/lib/or;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/or;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->v:Landroid/widget/TextView$OnEditorActionListener;

    .line 309
    new-instance v0, Lccc71/pmw/lib/os;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/os;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->w:Landroid/view/View$OnFocusChangeListener;

    .line 323
    new-instance v0, Lccc71/pmw/lib/ot;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ot;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->x:Landroid/view/View$OnClickListener;

    .line 361
    new-instance v0, Lccc71/pmw/lib/ou;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ou;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->y:Landroid/view/View$OnClickListener;

    .line 376
    new-instance v0, Lccc71/pmw/lib/ov;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ov;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->z:Landroid/view/View$OnClickListener;

    .line 390
    new-instance v0, Lccc71/pmw/lib/ow;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ow;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->A:Landroid/view/View$OnClickListener;

    .line 468
    new-instance v0, Lccc71/pmw/lib/oy;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oy;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->B:Landroid/view/View$OnClickListener;

    .line 550
    new-instance v0, Lccc71/pmw/lib/pa;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pa;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->C:Landroid/view/View$OnClickListener;

    .line 562
    new-instance v0, Lccc71/pmw/lib/oh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oh;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 584
    new-instance v0, Lccc71/pmw/lib/oi;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oi;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->E:Landroid/widget/TextView$OnEditorActionListener;

    .line 607
    new-instance v0, Lccc71/pmw/lib/oj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oj;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->F:Landroid/view/View$OnFocusChangeListener;

    .line 616
    new-instance v0, Lccc71/pmw/lib/ok;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ok;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->G:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 660
    new-instance v0, Lccc71/pmw/lib/ol;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ol;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->H:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic A(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->G:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->y:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1375
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sysctl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "value"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 696
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->b(Landroid/view/View;)V

    .line 702
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 703
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 704
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/widget/TextView;Lccc71/pmw/lib/pb;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1305
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    div-int/lit16 v0, p2, 0x400

    invoke-static {v0}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    div-int/lit16 v0, p2, 0x1000

    invoke-static {v0}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "2^P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "100th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v0, p2, 0xa

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "NS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    int-to-long v0, p2

    invoke-static {v0, v1}, Lccc71/utils/ag;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    int-to-long v0, p2

    invoke-static {v0, v1}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_sysctl;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;Lccc71/pmw/lib/pb;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1169
    iget-object v0, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    invoke-virtual {v4}, Landroid/widget/TableRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-virtual {v4, v7}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v3, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iput-object p3, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v0, p2, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v1, p2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x333334

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance v0, Lccc71/pmw/lib/oq;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/lib/oq;-><init>(Lccc71/pmw/lib/pmw_sysctl;Lccc71/pmw/lib/pb;Ljava/lang/String;Landroid/widget/TableRow;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/oq;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p2, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    iget-object v1, p2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iget-object v2, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccc71/pmw/lib/pmw_sysctl;->b:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Landroid/widget/TableRow;Lccc71/pmw/lib/pb;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1260
    iget-object v0, p2, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lccc71/pmw/lib/pb;->f:I

    if-nez v0, :cond_1

    iget v0, p2, Lccc71/pmw/lib/pb;->g:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p1, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lccc71/pmw/lib/g;->dE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    return-void

    :cond_0
    sget v2, Lccc71/pmw/lib/g;->dI:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lccc71/pmw/lib/pb;->h:I

    if-nez v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget v2, p2, Lccc71/pmw/lib/pb;->f:I

    sub-int/2addr v1, v2

    iget v2, p2, Lccc71/pmw/lib/pb;->h:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1402
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_sysctl;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1424
    invoke-direct {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_sysctl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sysctl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_sysctl;->j:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1404
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1411
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sysctl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sysctl_values"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1426
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1431
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1432
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sysctl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1438
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sysctl_values"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1443
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 715
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pmw_sysctl preparing for full update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget v0, Lccc71/pmw/lib/d;->iH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 719
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 720
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 721
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 722
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 724
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 725
    sget v3, Lccc71/pmw/lib/g;->dX:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 726
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 728
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 730
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 732
    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_sysctl;->j:Z

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    const-string v2, "process_monitor_widget"

    const-string v3, "pmw_sysctl advanced mode, running task"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v2, Lccc71/pmw/lib/on;

    invoke-direct {v2, p0, p1, v0}, Lccc71/pmw/lib/on;-><init>(Lccc71/pmw/lib/pmw_sysctl;ZLandroid/widget/TableLayout;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 850
    invoke-virtual {v2, v0}, Lccc71/pmw/lib/on;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    move-result-object v0

    .line 737
    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->t:Lccc71/utils/android/a;

    .line 734
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    :goto_0
    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 857
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 859
    :try_start_1
    const-string v2, "process_monitor_widget"

    const-string v3, "pmw_sysctl simple mode, running task"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v2, Lccc71/pmw/lib/oo;

    invoke-direct {v2, p0, p1, v0}, Lccc71/pmw/lib/oo;-><init>(Lccc71/pmw/lib/pmw_sysctl;ZLandroid/widget/TableLayout;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1060
    invoke-virtual {v2, v0}, Lccc71/pmw/lib/oo;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    move-result-object v0

    .line 860
    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->t:Lccc71/utils/android/a;

    .line 857
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TableRow$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->n:Landroid/widget/TableRow$LayoutParams;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const v4, -0x333334

    const/4 v8, 0x0

    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/pb;

    move-object v0, p1

    .line 1068
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1070
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1071
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1072
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1074
    iget-object v0, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v3, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    .line 1078
    iput-object v1, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    .line 1079
    iget-object v0, v2, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->a(Ljava/lang/String;)V

    .line 1081
    iget-object v0, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v1, v2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setId(I)V

    .line 1084
    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1086
    :cond_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1087
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1099
    :goto_1
    new-instance v0, Lccc71/pmw/lib/op;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lccc71/pmw/lib/op;-><init>(Lccc71/pmw/lib/pmw_sysctl;Lccc71/pmw/lib/pb;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 1166
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/op;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_0

    .line 1091
    :cond_2
    iget-object v0, v2, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    iget-object v1, v2, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iget-object v4, v2, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lccc71/pmw/lib/pmw_sysctl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setId(I)V

    .line 1094
    sget v0, Lccc71/pmw/lib/pmw_sysctl;->b:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1095
    sget v0, Lccc71/pmw/lib/pmw_sysctl;->b:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1096
    sget v0, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_sysctl;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_sysctl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_sysctl;->a(Z)V

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_sysctl;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lccc71/pmw/lib/pmw_sysctl;->k:F

    return v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lccc71/pmw/lib/pmw_sysctl;->o:Landroid/view/View;

    return-void
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TableRow$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->m:Landroid/widget/TableRow$LayoutParams;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lccc71/pmw/lib/pmw_sysctl;->b:I

    return v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->v:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->w:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_sysctl;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lccc71/pmw/lib/pmw_sysctl;->l:I

    return v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_sysctl;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_sysctl;)Lccc71/utils/android/a;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->t:Lccc71/utils/android/a;

    return-object v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->t:Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_sysctl;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_sysctl;->j:Z

    return v0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1413
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sysctl"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    invoke-static {}, Lccc71/pmw/b/a/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sysctl_values"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->B:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->C:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic s(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic t(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->A:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->r:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic v(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->u:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic w(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->z:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic x(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic y(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->E:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method static synthetic z(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->F:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lccc71/pmw/lib/c;->aF:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lccc71/pmw/lib/g;->ff:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sysctl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sysctl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x2

    const/16 v3, 0x8

    .line 121
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lccc71/pmw/b/a/a;

    invoke-direct {v0, p0}, Lccc71/pmw/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    .line 128
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_sysctl;->k:F

    .line 129
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_sysctl;->l:I

    .line 133
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->H:Landroid/os/Handler;

    invoke-static {p0, v0}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    .line 135
    sget v0, Lccc71/pmw/lib/e;->bv:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->setContentView(I)V

    .line 137
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->m:Landroid/widget/TableRow$LayoutParams;

    .line 138
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->m:Landroid/widget/TableRow$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 140
    iget v0, p0, Lccc71/pmw/lib/pmw_sysctl;->k:F

    const/high16 v1, 0x40c0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sysctl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 141
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->n:Landroid/widget/TableRow$LayoutParams;

    .line 142
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->n:Landroid/widget/TableRow$LayoutParams;

    const/high16 v1, 0x4120

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sysctl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    .line 144
    sget v0, Lccc71/pmw/lib/d;->g:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->c:Landroid/widget/Button;

    .line 145
    sget v0, Lccc71/pmw/lib/d;->aa:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->e:Landroid/widget/Button;

    .line 146
    sget v0, Lccc71/pmw/lib/d;->Y:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->d:Landroid/widget/Button;

    .line 147
    sget v0, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->f:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->c:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->d:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->f:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->e:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->a(Z)V

    goto/16 :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->p:Lccc71/pmw/b/a/a;

    .line 195
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 197
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->r:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 199
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sysctl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 200
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->c:Landroid/widget/Button;

    .line 201
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->d:Landroid/widget/Button;

    .line 202
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->e:Landroid/widget/Button;

    .line 203
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->f:Landroid/widget/Button;

    .line 205
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->m:Landroid/widget/TableRow$LayoutParams;

    .line 206
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sysctl;->n:Landroid/widget/TableRow$LayoutParams;

    .line 208
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_sysctl;->a(Landroid/view/View;)V

    .line 172
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Q(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Lccc71/pmw/lib/om;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/om;-><init>(Lccc71/pmw/lib/pmw_sysctl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 184
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/om;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 187
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 188
    return-void
.end method
