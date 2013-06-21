.class public Lcom/kt/olleh/inapp/util/UIParser;
.super Ljava/lang/Object;
.source "UIParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIParser"


# instance fields
.field private hasResDir:Z

.field private mContext:Landroid/content/Context;

.field private mHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mLayoutStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    .line 51
    iput-object p1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    .line 54
    iput v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    .line 55
    return-void
.end method

.method private createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 41
    .parameter "parse"

    .prologue
    .line 177
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 178
    .local v21, name:Ljava/lang/String;
    const/16 v23, 0x0

    .line 179
    .local v23, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 181
    .local v3, atts:Landroid/util/AttributeSet;
    const-string v37, "LinearLayout"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 182
    new-instance v23, Landroid/widget/LinearLayout;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    .restart local v23       #result:Landroid/view/View;
    :goto_0
    if-nez v23, :cond_9

    .line 201
    const/16 v23, 0x0

    .line 492
    .end local v23           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v23

    .line 183
    .restart local v23       #result:Landroid/view/View;
    :cond_1
    const-string v37, "TextView"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 184
    new-instance v23, Landroid/widget/TextView;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 185
    :cond_2
    const-string v37, "ImageView"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 186
    new-instance v23, Landroid/widget/ImageView;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 187
    :cond_3
    const-string v37, "Button"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 188
    new-instance v23, Landroid/widget/Button;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 189
    :cond_4
    const-string v37, "EditText"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 190
    new-instance v23, Landroid/widget/EditText;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 191
    :cond_5
    const-string v37, "RadioGroup"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 192
    new-instance v23, Landroid/widget/RadioGroup;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 193
    :cond_6
    const-string v37, "RadioButton"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 194
    new-instance v23, Landroid/widget/RadioButton;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 195
    :cond_7
    const-string v37, "CheckBox"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 196
    new-instance v23, Landroid/widget/CheckBox;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 198
    :cond_8
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Unhandled tag:"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_9
    const-string v37, "android:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, id:Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->setID(Landroid/view/View;Ljava/lang/String;)V

    .line 207
    :cond_a
    const-string v37, "android:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, image:Ljava/lang/String;
    if-eqz v13, :cond_b

    .line 210
    const-string v37, "#"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 212
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    :cond_b
    :goto_2
    const-string v37, "android:visibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 277
    .local v36, visible:Ljava/lang/String;
    if-eqz v36, :cond_c

    .line 279
    const-string v37, "gone"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_12

    .line 280
    const/16 v37, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_c
    :goto_3
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/RadioGroup;

    move/from16 v37, v0

    if-eqz v37, :cond_16

    move-object/from16 v24, v23

    .line 288
    check-cast v24, Landroid/widget/RadioGroup;

    .line 289
    .local v24, rg:Landroid/widget/RadioGroup;
    const-string v37, "android:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 290
    .local v22, orient:Ljava/lang/String;
    if-eqz v22, :cond_d

    .line 292
    const-string v37, "horizontal"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 293
    const/16 v37, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 298
    :cond_d
    :goto_4
    const-string v37, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, gravity:Ljava/lang/String;
    if-eqz v11, :cond_e

    .line 301
    const-string v37, "center"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 302
    const/16 v37, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 487
    .end local v11           #gravity:Ljava/lang/String;
    .end local v22           #orient:Ljava/lang/String;
    .end local v24           #rg:Landroid/widget/RadioGroup;
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->size()I

    move-result v37

    if-lez v37, :cond_0

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/kt/olleh/inapp/util/UIParser;->setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 216
    .end local v36           #visible:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v37, v0

    if-eqz v37, :cond_10

    move-object/from16 v8, v23

    .line 218
    check-cast v8, Landroid/widget/EditText;

    .line 220
    .local v8, btn:Landroid/widget/EditText;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 222
    .local v10, drawables:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "a_inputbox_p.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 223
    .local v15, in:Ljava/io/InputStream;
    const-string v37, "a_inputbox_p"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 224
    .local v7, btPress:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const v39, 0x10100a7

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "a_inputbox_f.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 227
    const-string v37, "a_inputbox_f"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 228
    .local v4, btFocus:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const v39, 0x101009c

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "a_inputbox_n.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 231
    const-string v37, "a_inputbox_n"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 232
    .local v5, btOn:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 236
    .end local v4           #btFocus:Landroid/graphics/drawable/Drawable;
    .end local v5           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v7           #btPress:Landroid/graphics/drawable/Drawable;
    .end local v8           #btn:Landroid/widget/EditText;
    .end local v10           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #in:Ljava/io/InputStream;
    :cond_10
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/RadioButton;

    move/from16 v37, v0

    if-nez v37, :cond_b

    .line 252
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v37, v0

    if-eqz v37, :cond_11

    move-object/from16 v8, v23

    .line 254
    check-cast v8, Landroid/widget/Button;

    .line 256
    .local v8, btn:Landroid/widget/Button;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 258
    .restart local v10       #drawables:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "popup_btn_sel.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 259
    .restart local v15       #in:Ljava/io/InputStream;
    const-string v37, "popup_btn_sel"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 260
    .local v6, btOver:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const v39, 0x10100a7

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "popup_btn.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 263
    const-string v37, "popup_btn"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 264
    .restart local v5       #btOn:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 270
    .end local v5           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v6           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v8           #btn:Landroid/widget/Button;
    .end local v10           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #in:Ljava/io/InputStream;
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/kt/olleh/inapp/util/UIParser;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 271
    .local v17, is:Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 281
    .end local v17           #is:Ljava/io/InputStream;
    .restart local v36       #visible:Ljava/lang/String;
    :cond_12
    const-string v37, "visible"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 282
    const/16 v37, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 283
    :cond_13
    const-string v37, "invisible"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 284
    const/16 v37, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 294
    .restart local v22       #orient:Ljava/lang/String;
    .restart local v24       #rg:Landroid/widget/RadioGroup;
    :cond_14
    const-string v37, "vertical"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 295
    const/16 v37, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    goto/16 :goto_4

    .line 304
    .restart local v11       #gravity:Ljava/lang/String;
    :cond_15
    const/16 v37, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setGravity(I)V

    goto/16 :goto_5

    .line 307
    .end local v11           #gravity:Ljava/lang/String;
    .end local v22           #orient:Ljava/lang/String;
    .end local v24           #rg:Landroid/widget/RadioGroup;
    :cond_16
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v37, v0

    if-eqz v37, :cond_1a

    move-object/from16 v19, v23

    .line 309
    check-cast v19, Landroid/widget/LinearLayout;

    .line 310
    .local v19, ll:Landroid/widget/LinearLayout;
    const-string v37, "android:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 311
    .restart local v22       #orient:Ljava/lang/String;
    if-eqz v22, :cond_17

    .line 313
    const-string v37, "horizontal"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_18

    .line 314
    const/16 v37, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 319
    :cond_17
    :goto_6
    const-string v37, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 320
    .restart local v11       #gravity:Ljava/lang/String;
    if-eqz v11, :cond_e

    .line 322
    const-string v37, "center"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_19

    .line 323
    const/16 v37, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_5

    .line 315
    .end local v11           #gravity:Ljava/lang/String;
    :cond_18
    const-string v37, "vertical"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_17

    .line 316
    const/16 v37, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_6

    .line 325
    .restart local v11       #gravity:Ljava/lang/String;
    :cond_19
    const/16 v37, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_5

    .line 328
    .end local v11           #gravity:Ljava/lang/String;
    .end local v19           #ll:Landroid/widget/LinearLayout;
    .end local v22           #orient:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v37, v0

    if-eqz v37, :cond_25

    move-object/from16 v35, v23

    .line 330
    check-cast v35, Landroid/widget/EditText;

    .line 331
    .local v35, tv:Landroid/widget/EditText;
    const-string v37, "android:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 332
    .local v27, text:Ljava/lang/String;
    const-string v37, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 333
    .local v34, textSize:Ljava/lang/String;
    const-string v37, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 334
    .local v28, textColor:Ljava/lang/String;
    const-string v37, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 335
    .local v30, textGravity:Ljava/lang/String;
    const-string v37, "android:password"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 336
    .local v32, textPassword:Ljava/lang/String;
    const-string v37, "android:maxLength"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 338
    .local v31, textMaxLength:Ljava/lang/String;
    if-eqz v27, :cond_1b

    .line 340
    const-string v37, "\\n"

    const-string v38, "\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 341
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_1b
    if-eqz v34, :cond_1c

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 347
    :cond_1c
    if-eqz v28, :cond_1d

    .line 348
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 350
    :cond_1d
    if-eqz v30, :cond_23

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->setGravity(Landroid/view/View;Ljava/lang/String;)I

    .line 355
    :goto_7
    if-eqz v32, :cond_1e

    const-string v37, "true"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1e

    .line 356
    new-instance v37, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v37 .. v37}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 358
    :cond_1e
    if-eqz v31, :cond_1f

    .line 359
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readInt(Ljava/lang/String;)I

    move-result v40

    invoke-direct/range {v39 .. v40}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v39, v37, v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 361
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/kt/olleh/inapp/util/UIParser;->setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 363
    const-string v37, "android:maxLines"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 364
    .local v20, maxLines:Ljava/lang/String;
    if-eqz v20, :cond_20

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 367
    :cond_20
    const-string v37, "android:singleLine"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 368
    .local v25, singeline:Ljava/lang/String;
    if-eqz v25, :cond_21

    const-string v37, "true"

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_21

    .line 369
    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 371
    :cond_21
    const-string v37, "android:imeOptions"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, imeOptions:Ljava/lang/String;
    if-eqz v14, :cond_22

    .line 374
    const-string v37, "actionNext"

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_24

    .line 375
    const/16 v37, 0x5

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 380
    :cond_22
    :goto_8
    const-string v37, "android:inputType"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 381
    .local v16, inputType:Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 383
    const/16 v37, 0x81

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 385
    const-string v37, "number"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 386
    const/16 v37, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_5

    .line 353
    .end local v14           #imeOptions:Ljava/lang/String;
    .end local v16           #inputType:Ljava/lang/String;
    .end local v20           #maxLines:Ljava/lang/String;
    .end local v25           #singeline:Ljava/lang/String;
    :cond_23
    const/16 v37, 0x13

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_7

    .line 377
    .restart local v14       #imeOptions:Ljava/lang/String;
    .restart local v20       #maxLines:Ljava/lang/String;
    .restart local v25       #singeline:Ljava/lang/String;
    :cond_24
    const/16 v37, 0x6

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_8

    .line 390
    .end local v14           #imeOptions:Ljava/lang/String;
    .end local v20           #maxLines:Ljava/lang/String;
    .end local v25           #singeline:Ljava/lang/String;
    .end local v27           #text:Ljava/lang/String;
    .end local v28           #textColor:Ljava/lang/String;
    .end local v30           #textGravity:Ljava/lang/String;
    .end local v31           #textMaxLength:Ljava/lang/String;
    .end local v32           #textPassword:Ljava/lang/String;
    .end local v34           #textSize:Ljava/lang/String;
    .end local v35           #tv:Landroid/widget/EditText;
    :cond_25
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v37, v0

    if-eqz v37, :cond_2f

    move-object/from16 v35, v23

    .line 392
    check-cast v35, Landroid/widget/TextView;

    .line 393
    .local v35, tv:Landroid/widget/TextView;
    const-string v37, "android:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 394
    .restart local v27       #text:Ljava/lang/String;
    const-string v37, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 395
    .restart local v34       #textSize:Ljava/lang/String;
    const-string v37, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 396
    .restart local v28       #textColor:Ljava/lang/String;
    const-string v37, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 397
    .restart local v30       #textGravity:Ljava/lang/String;
    const-string v37, "android:ellipsize"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 398
    .local v29, textEllipsize:Ljava/lang/String;
    const-string v37, "android:singleLine"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 400
    .local v33, textSingleLine:Ljava/lang/String;
    if-eqz v27, :cond_26

    .line 402
    const-string v37, "\\n"

    const-string v38, "\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 403
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_26
    if-eqz v33, :cond_27

    .line 408
    const-string v37, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2b

    .line 410
    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 418
    :cond_27
    :goto_9
    if-eqz v29, :cond_28

    .line 420
    const-string v37, "end"

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2c

    .line 421
    sget-object v37, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 426
    :cond_28
    :goto_a
    if-eqz v34, :cond_29

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    :cond_29
    if-eqz v28, :cond_2a

    .line 431
    const-string v37, "#"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_2d

    .line 432
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    :cond_2a
    :goto_b
    if-eqz v30, :cond_2e

    .line 459
    const/16 v37, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 462
    :goto_c
    const/16 v37, 0x0

    const v38, 0x3f933333

    move-object/from16 v0, v35

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_5

    .line 414
    :cond_2b
    const/16 v37, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_9

    .line 422
    :cond_2c
    const-string v37, "marque"

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_28

    .line 423
    sget-object v37, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_a

    .line 435
    :cond_2d
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    const/16 v37, 0x0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const v40, 0x10100a7

    aput v40, v38, v39

    aput-object v38, v26, v37

    const/16 v37, 0x1

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    aput-object v38, v26, v37

    .line 437
    .local v26, stateList:[[I
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v9, v0, [I

    const/16 v37, 0x0

    const-string v38, "#FFFFFF"

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v38

    aput v38, v9, v37

    const/16 v37, 0x1

    const-string v38, "#171717"

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v38

    aput v38, v9, v37

    .line 439
    .local v9, colors:[I
    new-instance v18, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 441
    .local v18, list:Landroid/content/res/ColorStateList;
    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 442
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 446
    .restart local v10       #drawables:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "e_popup_list_p.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 447
    .restart local v15       #in:Ljava/io/InputStream;
    const-string v37, "e_popup_list_bg"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 448
    .restart local v6       #btOver:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const v39, 0x10100a7

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "e_popup_list_bg.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 451
    const-string v37, "e_popup_list_bg"

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 452
    .restart local v5       #btOn:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 454
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 461
    .end local v5           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v6           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v9           #colors:[I
    .end local v10           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #in:Ljava/io/InputStream;
    .end local v18           #list:Landroid/content/res/ColorStateList;
    .end local v26           #stateList:[[I
    :cond_2e
    const/16 v37, 0x13

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_c

    .line 464
    .end local v27           #text:Ljava/lang/String;
    .end local v28           #textColor:Ljava/lang/String;
    .end local v29           #textEllipsize:Ljava/lang/String;
    .end local v30           #textGravity:Ljava/lang/String;
    .end local v33           #textSingleLine:Ljava/lang/String;
    .end local v34           #textSize:Ljava/lang/String;
    .end local v35           #tv:Landroid/widget/TextView;
    :cond_2f
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v37, v0

    if-eqz v37, :cond_e

    move-object/from16 v8, v23

    .line 466
    check-cast v8, Landroid/widget/Button;

    .line 468
    .restart local v8       #btn:Landroid/widget/Button;
    const-string v37, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 469
    .restart local v11       #gravity:Ljava/lang/String;
    if-eqz v11, :cond_30

    .line 471
    const-string v37, "center"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_32

    .line 472
    const/16 v37, 0x11

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 477
    :cond_30
    :goto_d
    const-string v37, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 478
    .restart local v34       #textSize:Ljava/lang/String;
    if-eqz v34, :cond_31

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 481
    :cond_31
    const-string v37, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 482
    .restart local v28       #textColor:Ljava/lang/String;
    if-eqz v28, :cond_e

    .line 483
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    .line 474
    .end local v28           #textColor:Ljava/lang/String;
    .end local v34           #textSize:Ljava/lang/String;
    :cond_32
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_d
.end method

.method private dipToInt(F)I
    .locals 3
    .parameter "number"

    .prologue
    .line 737
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 743
    :goto_0
    return v0

    .line 742
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 743
    .local v0, num:I
    goto :goto_0
.end method

.method private findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "atts"
    .parameter "id"

    .prologue
    .line 609
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 613
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 614
    .local v1, ix:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 615
    const-string v2, "http://schemas.android.com/apk/res/android"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .end local v1           #ix:I
    :goto_1
    return-object v2

    .line 610
    :cond_0
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 609
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .restart local v1       #ix:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "value"
    .parameter "bNine"

    .prologue
    const/4 v3, 0x1

    .line 766
    if-nez p1, :cond_1

    .line 767
    const/4 p1, 0x0

    .line 784
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 769
    .restart local p1
    :cond_1
    const-string v1, "@drawable/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, split:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 774
    if-eqz p2, :cond_2

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 777
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 122
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 123
    const/4 v4, 0x0

    iput v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    .line 125
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 126
    .local v0, data:Ljava/util/Stack;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 127
    .local v1, evt:I
    const/4 v2, 0x0

    .line 128
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 167
    return-object v2

    .line 130
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 165
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 141
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 143
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 145
    if-nez v2, :cond_3

    .line 146
    move-object v2, v3

    .line 149
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 150
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 148
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 156
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 160
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isLayout(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 172
    const-string v0, "Layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 13
    .parameter "atts"
    .parameter "vg"

    .prologue
    .line 622
    const/4 v4, 0x0

    .line 623
    .local v4, lps:Landroid/view/ViewGroup$LayoutParams;
    const-string v12, "android:layout_width"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 624
    .local v11, width:Ljava/lang/String;
    const-string v12, "android:layout_height"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, height:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v9

    .line 626
    .local v9, w:I
    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v1

    .line 628
    .local v1, h:I
    instance-of v12, p2, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 629
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #lps:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 631
    .restart local v4       #lps:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v12, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_7

    move-object v3, v4

    .line 633
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 634
    .local v3, l:Landroid/widget/LinearLayout$LayoutParams;
    const-string v12, "android:layout_gravity"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, gravity:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 637
    const-string v12, "center"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 638
    const/16 v12, 0x11

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 643
    :cond_1
    :goto_0
    const-string v12, "android:layout_weight"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 644
    .local v10, weight:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 645
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 646
    :cond_2
    const-string v12, "android:layout_marginTop"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, marginTop:Ljava/lang/String;
    const-string v12, "android:layout_marginLeft"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 648
    .local v6, marginLeft:Ljava/lang/String;
    const-string v12, "android:layout_marginRight"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, marginRight:Ljava/lang/String;
    const-string v12, "android:layout_marginBottom"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, marginBottom:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 651
    invoke-direct {p0, v8}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 652
    :cond_3
    if-eqz v6, :cond_4

    .line 653
    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 654
    :cond_4
    if-eqz v7, :cond_5

    .line 655
    invoke-direct {p0, v7}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 656
    :cond_5
    if-eqz v5, :cond_6

    .line 657
    invoke-direct {p0, v5}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 658
    :cond_6
    move-object v4, v3

    .line 660
    .end local v0           #gravity:Ljava/lang/String;
    .end local v3           #l:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #marginBottom:Ljava/lang/String;
    .end local v6           #marginLeft:Ljava/lang/String;
    .end local v7           #marginRight:Ljava/lang/String;
    .end local v8           #marginTop:Ljava/lang/String;
    .end local v10           #weight:Ljava/lang/String;
    :cond_7
    return-object v4

    .line 640
    .restart local v0       #gravity:Ljava/lang/String;
    .restart local v3       #l:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    const/4 v12, 0x5

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private openFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "value"

    .prologue
    .line 794
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 795
    .local v0, is:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 800
    .end local v0           #is:Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method private readDPSize(Ljava/lang/String;)I
    .locals 4
    .parameter "val"

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 722
    .local v1, size:F
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const-string v2, "dip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 725
    invoke-direct {p0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->dipToInt(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 732
    :goto_0
    return v2

    .line 728
    :catch_0
    move-exception v0

    .line 730
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0

    .line 732
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private readFontSize(Ljava/lang/String;)I
    .locals 7
    .parameter "val"

    .prologue
    .line 697
    const/4 v2, 0x0

    .line 702
    .local v2, size:F
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 708
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 709
    .local v0, dpChange:F
    float-to-int v3, v0

    .end local v0           #dpChange:F
    :goto_0
    return v3

    .line 704
    :catch_0
    move-exception v1

    .line 706
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private readInt(Ljava/lang/String;)I
    .locals 4
    .parameter "val"

    .prologue
    .line 749
    const/4 v1, 0x0

    .line 752
    .local v1, size:I
    if-eqz p1, :cond_0

    .line 754
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 761
    :cond_0
    :goto_0
    return v1

    .line 757
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "UIParser"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readSize(Ljava/lang/String;)I
    .locals 8
    .parameter "val"

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    .line 665
    const/high16 v0, 0x3f80

    .line 666
    .local v0, density:F
    const-string v5, "wrap_content"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 667
    const/4 v4, -0x2

    .line 692
    :cond_0
    :goto_0
    return v4

    .line 668
    :cond_1
    const-string v5, "fill_parent"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 675
    const/4 v3, 0x0

    .line 676
    .local v3, size:F
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    const-string v5, "dip"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 678
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 679
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->dipToInt(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 682
    :catch_0
    move-exception v2

    .line 684
    .local v2, ex:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 686
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    const-string v4, "pt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 688
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 689
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 690
    .local v1, dpChange:F
    mul-float v4, v1, v0

    float-to-int v4, v4

    goto :goto_0

    .line 692
    .end local v1           #dpChange:F
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method private setGravity(Landroid/view/View;Ljava/lang/String;)I
    .locals 5
    .parameter "v"
    .parameter "layoutGravity"

    .prologue
    .line 497
    if-eqz p2, :cond_d

    .line 499
    const-string v3, "|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, split:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 501
    .local v0, gravity:I
    if-eqz v2, :cond_d

    .line 503
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 559
    .end local v0           #gravity:I
    .end local v1           #i:I
    .end local v2           #split:[Ljava/lang/String;
    :goto_1
    return v0

    .line 505
    .restart local v0       #gravity:I
    .restart local v1       #i:I
    .restart local v2       #split:[Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v1

    const-string v4, "top"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    or-int/lit8 v0, v0, 0x30

    .line 503
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_2
    aget-object v3, v2, v1

    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 511
    or-int/lit8 v0, v0, 0x50

    goto :goto_2

    .line 513
    :cond_3
    aget-object v3, v2, v1

    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    or-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 517
    :cond_4
    aget-object v3, v2, v1

    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 521
    :cond_5
    aget-object v3, v2, v1

    const-string v4, "center_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 525
    :cond_6
    aget-object v3, v2, v1

    const-string v4, "fill_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 527
    or-int/lit8 v0, v0, 0x70

    goto :goto_2

    .line 529
    :cond_7
    aget-object v3, v2, v1

    const-string v4, "center_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 531
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 533
    :cond_8
    aget-object v3, v2, v1

    const-string v4, "fill_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 535
    or-int/lit8 v0, v0, 0x7

    goto :goto_2

    .line 537
    :cond_9
    aget-object v3, v2, v1

    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 539
    or-int/lit8 v0, v0, 0x11

    goto :goto_2

    .line 541
    :cond_a
    aget-object v3, v2, v1

    const-string v4, "fill"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 543
    or-int/lit8 v0, v0, 0x77

    goto :goto_2

    .line 545
    :cond_b
    aget-object v3, v2, v1

    const-string v4, "clip_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 547
    or-int/lit16 v0, v0, 0x80

    goto/16 :goto_2

    .line 549
    :cond_c
    aget-object v3, v2, v1

    const-string v4, "clip_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_2

    .line 559
    .end local v0           #gravity:I
    .end local v1           #i:I
    .end local v2           #split:[Ljava/lang/String;
    :cond_d
    const/16 v0, 0x11

    goto/16 :goto_1
.end method

.method private setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "v"
    .parameter "atts"

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, left:I
    const/4 v7, 0x0

    .line 566
    .local v7, right:I
    const/4 v9, 0x0

    .line 567
    .local v9, top:I
    const/4 v0, 0x0

    .line 569
    .local v0, bottom:I
    const-string v10, "android:padding"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, padding:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 572
    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 573
    .local v8, size:I
    move v0, v8

    move v9, v8

    move v7, v8

    move v1, v8

    .line 576
    .end local v8           #size:I
    :cond_0
    const-string v10, "android:paddingTop"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, paddingTop:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 579
    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 580
    .restart local v8       #size:I
    move v9, v8

    .line 583
    .end local v8           #size:I
    :cond_1
    const-string v10, "android:paddingBottom"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, paddingBottom:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 586
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 587
    .restart local v8       #size:I
    move v0, v8

    .line 590
    .end local v8           #size:I
    :cond_2
    const-string v10, "android:paddingLeft"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, paddingLeft:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 593
    invoke-direct {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 594
    .restart local v8       #size:I
    move v1, v8

    .line 597
    .end local v8           #size:I
    :cond_3
    const-string v10, "android:paddingRight"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, paddingRight:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 600
    invoke-direct {p0, v5}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 601
    .restart local v8       #size:I
    move v7, v8

    .line 604
    .end local v8           #size:I
    :cond_4
    invoke-virtual {p1, v1, v9, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 605
    return-void
.end method


# virtual methods
.method public Start(Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "xmlFileFname"

    .prologue
    .line 92
    const/4 v3, 0x0

    .line 95
    .local v3, parse:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 96
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 99
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 100
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/res"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    :cond_0
    const-string v5, "utf-8"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 116
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "UIParser"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    const-string v5, "UIParser"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 66
    iput-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    .line 69
    :cond_0
    iput-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public getID(Ljava/lang/String;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, -0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    if-eqz v0, :cond_0

    const-string v0, "/res/drawable-hdpi/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/drawable-hdpi/"

    goto :goto_0
.end method

.method public setID(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "value"

    .prologue
    .line 81
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, split:[Ljava/lang/String;
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 86
    iget-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    goto :goto_0
.end method
