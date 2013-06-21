.class public Lcom/fleapapa/helper/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fleapapa/helper/Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final MCATFILES:I = 0x40

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_BUY:I = 0xa

.field public static final TYPE_CONSUME:I = 0x2

.field public static final TYPE_POLL:I = 0x12

.field public static final TYPE_POST:I = 0x11

.field public static final TYPE_PROVIDE:I = 0x1

.field public static final TYPE_SELL:I = 0x9

.field public static final WHO:Ljava/lang/String; = "Category"

.field private static cat5:[Lcom/fleapapa/helper/Category;

.field static categories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fleapapa/helper/Category;",
            ">;"
        }
    .end annotation
.end field

.field static initialized:Z

.field static isnew:Z

.field static latime:Ljava/lang/String;

.field static ncatPath:Ljava/lang/String;

.field static root:Lcom/fleapapa/helper/Category;


# instance fields
.field adi:I

.field ads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fleapapa/helper/Ad;",
            ">;"
        }
    .end annotation
.end field

.field atime:Ljava/lang/String;

.field child:Lcom/fleapapa/helper/Category;

.field public code:I

.field dist:I

.field expanded:Z

.field interested:Z

.field isleaf:Z

.field keyw:Ljava/lang/String;

.field lastChild:Lcom/fleapapa/helper/Category;

.field level:I

.field public name:Ljava/lang/String;

.field nintr:I

.field nitem:I

.field noAd:Z

.field parent:Lcom/fleapapa/helper/Category;

.field poll:Z

.field post:Z

.field sible:Lcom/fleapapa/helper/Category;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fleapapa/helper/Category;

    sput-object v0, Lcom/fleapapa/helper/Category;->cat5:[Lcom/fleapapa/helper/Category;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->getDataDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/newcats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/helper/Category;->ncatPath:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/fleapapa/helper/Category;->initialize()Z

    move-result v0

    sput-boolean v0, Lcom/fleapapa/helper/Category;->initialized:Z

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "code"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/fleapapa/helper/Category;->code:I

    .line 58
    iput-object p2, p0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/fleapapa/helper/Category;->type:I

    .line 60
    return-void
.end method

.method static countItems()V
    .locals 6

    .prologue
    .line 135
    sget-object v4, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 136
    .local v2, ncat:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 146
    return-void

    .line 137
    :cond_0
    sget-object v4, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 138
    .local v0, cat:Lcom/fleapapa/helper/Category;
    iget-boolean v4, v0, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-nez v4, :cond_2

    .line 139
    const/4 v4, 0x0

    iput v4, v0, Lcom/fleapapa/helper/Category;->nitem:I

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v3, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    .local v3, p:Lcom/fleapapa/helper/Category;
    :goto_1
    if-eqz v3, :cond_1

    .line 142
    iget v4, v3, Lcom/fleapapa/helper/Category;->nitem:I

    iget v5, v0, Lcom/fleapapa/helper/Category;->nitem:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/fleapapa/helper/Category;->nitem:I

    .line 143
    iget v4, v3, Lcom/fleapapa/helper/Category;->nintr:I

    iget v5, v0, Lcom/fleapapa/helper/Category;->nintr:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/fleapapa/helper/Category;->nintr:I

    .line 141
    iget-object v3, v3, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    goto :goto_1
.end method

.method static fastLoad()I
    .locals 9

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0xb

    const-string v8, "3DO"

    const-string v7, "others "

    const-string v6, "others"

    .line 292
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Category.fastLoad: /"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/high16 v0, 0x100

    const-string v1, "Antiques"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 294
    const/high16 v0, 0x101

    const-string v1, "Classical/American"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 295
    const/high16 v0, 0x102

    const-string v1, "Architectural/Garden"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 296
    const/high16 v0, 0x103

    const-string v1, "Asian Antiques"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 297
    const/high16 v0, 0x104

    const-string v1, "Books/Manuscripts"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 298
    const/high16 v0, 0x105

    const-string v1, "Decorative Arts"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 299
    const/high16 v0, 0x106

    const-string v1, "Ethnographic"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 300
    const/high16 v0, 0x107

    const-string v1, "Furniture"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 301
    const/high16 v0, 0x108

    const-string v1, "Maps/Atlases/Globes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 302
    const/high16 v0, 0x109

    const-string v1, "Musical Instruments"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 303
    const/high16 v0, 0x10a

    const-string v1, "Reproduction Antiques"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 304
    const/high16 v0, 0x10b

    const-string v1, "Rugs/Carpets"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 305
    const/high16 v0, 0x10c

    const-string v1, "Science/Medicine"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 306
    const/high16 v0, 0x10d

    const-string v1, "Sewing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 307
    const/high16 v0, 0x10e

    const-string v1, "Silver"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 308
    const/high16 v0, 0x10f

    const-string v1, "Textiles/Linens"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 309
    const/high16 v0, 0x110

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 310
    const/high16 v0, 0x200

    const-string v1, "Baby"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 311
    const/high16 v0, 0x201

    const-string v1, "Baby Gear"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 312
    const/high16 v0, 0x202

    const-string v1, "Baby Safety/Health"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 313
    const/high16 v0, 0x203

    const-string v1, "Bathing/Grooming"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 314
    const/high16 v0, 0x204

    const-string v1, "Car Safety Seats"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 315
    const/high16 v0, 0x205

    const-string v1, "Diapering"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 316
    const/high16 v0, 0x206

    const-string v1, "Feeding"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 317
    const/high16 v0, 0x207

    const-string v1, "Nursery Bedding"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 318
    const/high16 v0, 0x208

    const-string v1, "Nursery Furniture"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 319
    const/high16 v0, 0x209

    const-string v1, "Potty Training"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 320
    const/high16 v0, 0x20a

    const-string v1, "Strollers"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 321
    const/high16 v0, 0x20b

    const-string v1, "Toys"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 322
    const/high16 v0, 0x20c

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 323
    const/high16 v0, 0x300

    const-string v1, "Books"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 324
    const/high16 v0, 0x301

    const-string v1, "Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 325
    const/high16 v0, 0x302

    const-string v1, "Antiquarian"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 326
    const/high16 v0, 0x303

    const-string v1, "Audiobooks"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 327
    const/high16 v0, 0x304

    const-string v1, "Catalogs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 328
    const/high16 v0, 0x305

    const-string v1, "Children\'s Books"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 329
    const/high16 v0, 0x306

    const-string v1, "Cookbooks"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 330
    const/high16 v0, 0x307

    const-string v1, "Fiction Books"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 331
    const/high16 v0, 0x308

    const-string v1, "Magazine Back Issues"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 332
    const/high16 v0, 0x309

    const-string v1, "Magazine Subscriptions"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 333
    const/high16 v0, 0x30a

    const-string v1, "Nonfiction Books"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 334
    const/high16 v0, 0x30b

    const-string v1, "Textbooks/Education"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 335
    const/high16 v0, 0x30c

    const-string v1, "Wholesale/Bulk Lots"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 336
    const/high16 v0, 0x30d

    const-string v1, "others "

    invoke-static {v0, v4, v7}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 337
    const/high16 v0, 0x400

    const-string v1, "Business/Industrial"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 338
    const/high16 v0, 0x401

    const-string v1, "Agriculture/Forestry"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 339
    const/high16 v0, 0x402

    const-string v1, "Construction"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 340
    const/high16 v0, 0x403

    const-string v1, "Food Service/Retail"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 341
    const/high16 v0, 0x404

    const-string v1, "Healthcare/Life Science"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 342
    const/high16 v0, 0x405

    const-string v1, "Industrial Electrical/Test"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 343
    const/high16 v0, 0x406

    const-string v1, "Industrial Supply/MRO"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 344
    const/high16 v0, 0x407

    const-string v1, "Manufacturing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 345
    const/high16 v0, 0x40a

    const-string v1, "Metalworking"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 346
    const/high16 v0, 0x408

    const-string v1, "Office/Printing/Shipping"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 347
    const/high16 v0, 0x409

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 348
    const/high16 v0, 0x500

    const-string v1, "Cameras/Photo"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 349
    const/high16 v0, 0x501

    const-string v1, "Bags/Cases/Straps"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 350
    const/high16 v0, 0x502

    const-string v1, "Binoculars/Telescopes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 351
    const/high16 v0, 0x503

    const-string v1, "Camcorder Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 352
    const/high16 v0, 0x504

    const-string v1, "Camcorders"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 353
    const/high16 v0, 0x505

    const-string v1, "Digital Camera Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 354
    const/high16 v0, 0x506

    const-string v1, "Digital Cameras"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 355
    const/high16 v0, 0x507

    const-string v1, "Film"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 356
    const/high16 v0, 0x508

    const-string v1, "Film Cameras/Accessories "

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 357
    const/high16 v0, 0x509

    const-string v1, "Film Processing/Darkroom"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 358
    const/high16 v0, 0x50a

    const-string v1, "Flashes/Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 359
    const/high16 v0, 0x50b

    const-string v1, "Lenses/Filters"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 360
    const/high16 v0, 0x50c

    const-string v1, "Lighting/Studio Equipment"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 361
    const/high16 v0, 0x50d

    const-string v1, "Manuals/Guides/Books"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 362
    const/high16 v0, 0x50e

    const-string v1, "Photo Albums/Archive Items"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 363
    const/high16 v0, 0x50f

    const-string v1, "Printers/Scanners/Supplies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 364
    const/high16 v0, 0x510

    const-string v1, "Professional Video Equipment"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 365
    const/high16 v0, 0x511

    const-string v1, "Projection Equipment"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 366
    const/high16 v0, 0x512

    const-string v1, "Stock Photography/Footage"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 367
    const/high16 v0, 0x513

    const-string v1, "Tripods/Monopods"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 368
    const/high16 v0, 0x514

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 369
    const/high16 v0, 0x600

    const-string v1, "Cars/Boats/Vehicles"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 370
    const/high16 v0, 0x601

    const-string v1, "Cars/Trucks"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 371
    const v0, 0x6010100

    const-string v1, "Acura"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 372
    const v0, 0x6010200

    const-string v1, "Alfa Romeo"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 373
    const v0, 0x6010300

    const-string v1, "Aston Martin"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 374
    const v0, 0x6010400

    const-string v1, "Audi"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 375
    const v0, 0x6010500

    const-string v1, "Austin"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 376
    const v0, 0x6010600

    const-string v1, "Bentley"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 377
    const v0, 0x6010700

    const-string v1, "BMW"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 378
    const v0, 0x6010800

    const-string v1, "Bugatti"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 379
    const v0, 0x6010900

    const-string v1, "Buick"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 380
    const v0, 0x6010a00

    const-string v1, "Cadillac"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 381
    const v0, 0x6010b00

    const-string v1, "Chevrolet"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 382
    const v0, 0x6010c00

    const-string v1, "Chrysler"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 383
    const v0, 0x6010d00

    const-string v1, "Citroen"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 384
    const v0, 0x6011000

    const-string v1, "Dodge"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 385
    const v0, 0x6011200

    const-string v1, "Ferrari"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 386
    const v0, 0x6011300

    const-string v1, "Fiat"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 387
    const v0, 0x6011400

    const-string v1, "Ford"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 388
    const v0, 0x6011600

    const-string v1, "GMC"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 389
    const v0, 0x6011700

    const-string v1, "Honda"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 390
    const v0, 0x6011800

    const-string v1, "Hummer"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 391
    const v0, 0x6011900

    const-string v1, "Hyundai"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 392
    const v0, 0x6011a00

    const-string v1, "Infiniti"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 393
    const v0, 0x6011b00

    const-string v1, "Isuzu"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 394
    const v0, 0x6011c00

    const-string v1, "Jaguar"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 395
    const v0, 0x6011d00

    const-string v1, "Jeep"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 396
    const v0, 0x6011e00

    const-string v1, "Kia"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 397
    const v0, 0x6011f00

    const-string v1, "Lamborghini"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 398
    const v0, 0x6012000

    const-string v1, "Lancia"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 399
    const v0, 0x6012100

    const-string v1, "Land Rover"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 400
    const v0, 0x6012200

    const-string v1, "Lexus"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 401
    const v0, 0x6012300

    const-string v1, "Lincoln"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 402
    const v0, 0x6012400

    const-string v1, "Lotus"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 403
    const v0, 0x6012500

    const-string v1, "Maserati"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 404
    const v0, 0x6012600

    const-string v1, "Mazda"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 405
    const v0, 0x6012700

    const-string v1, "Mercedes-Benz"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 406
    const v0, 0x6012800

    const-string v1, "Mercury"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 407
    const v0, 0x6012900

    const-string v1, "Mini"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 408
    const v0, 0x6012a00

    const-string v1, "Mitsubishi"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 409
    const v0, 0x6012b00

    const-string v1, "Nissan"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 410
    const v0, 0x6012c00

    const-string v1, "Oldsmobile"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 411
    const v0, 0x6012d00

    const-string v1, "Opel"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 412
    const v0, 0x6012e00

    const-string v1, "Peugeot"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 413
    const v0, 0x6013000

    const-string v1, "Pontiac"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 414
    const v0, 0x6013100

    const-string v1, "Porsche"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 415
    const v0, 0x6013200

    const-string v1, "Renault"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 416
    const v0, 0x6013300

    const-string v1, "Rolls-Royce"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 417
    const v0, 0x6013400

    const-string v1, "Saab"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 418
    const v0, 0x6013500

    const-string v1, "Saturn"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 419
    const v0, 0x6013600

    const-string v1, "Scion"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 420
    const v0, 0x6013700

    const-string v1, "Smart"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 421
    const v0, 0x6013800

    const-string v1, "Subaru"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 422
    const v0, 0x6013900

    const-string v1, "Suzuki"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 423
    const v0, 0x6013a00

    const-string v1, "Toyota"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 424
    const v0, 0x6013b00

    const-string v1, "Volkswagen"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 425
    const v0, 0x6013c00

    const-string v1, "Volvo"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 426
    const v0, 0x6013d00

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 427
    const/high16 v0, 0x602

    const-string v1, "Motorcycles"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 428
    const/high16 v0, 0x603

    const-string v1, "Powersports"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 429
    const/high16 v0, 0x604

    const-string v1, "Boats"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 430
    const/high16 v0, 0x605

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 431
    const/high16 v0, 0x700

    const-string v1, "Cell Phones/PDAs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 432
    const/high16 v0, 0x701

    const-string v1, "Bluetooth"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 433
    const/high16 v0, 0x702

    const-string v1, "Cell Phones"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 434
    const/high16 v0, 0x703

    const-string v1, "Smartphones"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 435
    const/high16 v0, 0x704

    const-string v1, "PDAs/Pocket PCs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 436
    const/high16 v0, 0x705

    const-string v1, "Phone/SIM Cards"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 437
    const/high16 v0, 0x706

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 438
    const/high16 v0, 0x707

    const-string v1, "Apple iPhone"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 439
    const/high16 v0, 0x708

    const-string v1, "Google Android"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 440
    const/high16 v0, 0x709

    const-string v1, "RIM Blackberry"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 441
    const/high16 v0, 0x70a

    const-string v1, "Windows Mobile"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 442
    const/high16 v0, 0x800

    const-string v1, "Clothing/Shoes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 443
    const/high16 v0, 0x801

    const-string v1, "Costumes/Reenactment Attire"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 444
    const/high16 v0, 0x802

    const-string v1, "Cultural/Ethnic Clothing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 445
    const/high16 v0, 0x803

    const-string v1, "Dancewear/Dance Shoes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 446
    const/high16 v0, 0x804

    const-string v1, "Infants/Toddlers"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 447
    const/high16 v0, 0x805

    const-string v1, "Boys"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 448
    const/high16 v0, 0x806

    const-string v1, "Girls"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 449
    const/high16 v0, 0x808

    const-string v1, "Men"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 450
    const/high16 v0, 0x809

    const-string v1, "Uniforms"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 451
    const/high16 v0, 0x80a

    const-string v1, "Unisex Clothing/Shoes/Accs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 452
    const/high16 v0, 0x80b

    const-string v1, "Wedding Apparel"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 453
    const/high16 v0, 0x80c

    const-string v1, "Women\'s"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 454
    const/high16 v0, 0x80d

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 455
    const/high16 v0, 0x900

    const-string v1, "Collectibles"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 456
    const/high16 v0, 0x901

    const-string v1, "Advertising"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 457
    const/high16 v0, 0x902

    const-string v1, "Animals"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 458
    const/high16 v0, 0x903

    const-string v1, "Art"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 459
    const/high16 v0, 0x904

    const-string v1, "Autographs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 460
    const/high16 v0, 0x905

    const-string v1, "Clocks"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 461
    const/high16 v0, 0x906

    const-string v1, "Coins/Paper Money"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 462
    const/high16 v0, 0x907

    const-string v1, "Comics"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 463
    const/high16 v0, 0x908

    const-string v1, "Crafts"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 464
    const/high16 v0, 0x909

    const-string v1, "Decorative Collectibles"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 465
    const/high16 v0, 0x90a

    const-string v1, "Dolls/Bears"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 466
    const/high16 v0, 0x90b

    const-string v1, "Furniture/Appliances/Fans"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 467
    const/high16 v0, 0x90c

    const-string v1, "Housewares/Kitchenware"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 468
    const/high16 v0, 0x90d

    const-string v1, "Knives/Swords/Blades"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 469
    const/high16 v0, 0x90e

    const-string v1, "Lamps/Lighting"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 470
    const/high16 v0, 0x90f

    const-string v1, "Metalware"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 471
    const/high16 v0, 0x910

    const-string v1, "Paper"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 472
    const/high16 v0, 0x911

    const-string v1, "Photographic Images"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 473
    const/high16 v0, 0x912

    const-string v1, "Postcards"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 474
    const/high16 v0, 0x913

    const-string v1, "Stamps"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 475
    const/high16 v0, 0x914

    const-string v1, "Toys/Hobbies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 476
    const/high16 v0, 0x915

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 477
    const/high16 v0, 0x1900

    const-string v1, "Communities"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 478
    const/high16 v0, 0x1901

    const-string v1, "Activities"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 479
    const/high16 v0, 0x1902

    const-string v1, "Artists"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 480
    const/high16 v0, 0x1903

    const-string v1, "Childcare"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 481
    const/high16 v0, 0x1904

    const-string v1, "General"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 482
    const/high16 v0, 0x1905

    const-string v1, "Groups"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 483
    const/high16 v0, 0x1906

    const-string v1, "Pets"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 484
    const/high16 v0, 0x1907

    const-string v1, "Events"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 485
    const/high16 v0, 0x1908

    const-string v1, "Lost/Found"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 486
    const/high16 v0, 0x1909

    const-string v1, "Musicians"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 487
    const/high16 v0, 0x190a

    const-string v1, "News"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 488
    const/high16 v0, 0x190b

    const-string v1, "Politics"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 489
    const/high16 v0, 0x190c

    const-string v1, "Rideshare"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 490
    const/high16 v0, 0x190d

    const-string v1, "Volunteers"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 491
    const/high16 v0, 0x190e

    const-string v1, "Classes"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 492
    const/high16 v0, 0x190f

    const-string v1, "others"

    invoke-static {v0, v5, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 493
    const/high16 v0, 0xa00

    const-string v1, "Computers/Networking"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 494
    const/high16 v0, 0xa01

    const-string v1, "Apple"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 495
    const/high16 v0, 0xa02

    const-string v1, "Desktop PCs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 496
    const/high16 v0, 0xa03

    const-string v1, "Laptops/Notebooks"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 497
    const/high16 v0, 0xa04

    const-string v1, "Monitors/Projectors"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 498
    const/high16 v0, 0xa05

    const-string v1, "Software"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 499
    const v0, 0xa050100

    const-string v1, "Antivirus/Security/Utilities"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 500
    const v0, 0xa050200

    const-string v1, "Business/Productivity"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 501
    const v0, 0xa050300

    const-string v1, "Database/Development Tools"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 502
    const v0, 0xa050400

    const-string v1, "Digital Music/Video Software"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 503
    const v0, 0xa050500

    const-string v1, "Games/Entertainment"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 504
    const v0, 0xa050600

    const-string v1, "Graphics/Photo/Publishing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 505
    const v0, 0xa050700

    const-string v1, "Handheld Software"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 506
    const v0, 0xa050800

    const-string v1, "Internet Utilities"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 507
    const v0, 0xa050900

    const-string v1, "Networking"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 508
    const v0, 0xa050a00

    const-string v1, "Operating Systems"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 509
    const v0, 0xa050b00

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 510
    const v0, 0xa050c00

    const-string v1, "Apple iPhone"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 511
    const v0, 0xa050d00

    const-string v1, "Google Android"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 512
    const v0, 0xa050e00

    const-string v1, "RIM Blackberry"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 513
    const v0, 0xa050f00

    const-string v1, "Utilities"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 514
    const/high16 v0, 0xb00

    const-string v1, "Consumer Electronics"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 515
    const/high16 v0, 0xb01

    const-string v1, "Apple iPod/MP3 Players"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 516
    const/high16 v0, 0xb02

    const-string v1, "Batteries/Chargers"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 517
    const/high16 v0, 0xb03

    const-string v1, "Car Electronics"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 518
    const/high16 v0, 0xb04

    const-string v1, "DVD/Home Theater"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 519
    const/high16 v0, 0xb05

    const-string v1, "GPS Devices"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 520
    const/high16 v0, 0xb06

    const-string v1, "Home Audio"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 521
    const/high16 v0, 0xb07

    const-string v1, "MP3 Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 522
    const/high16 v0, 0xb08

    const-string v1, "Portable Audio/Video"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 523
    const/high16 v0, 0xb09

    const-string v1, "Satellite/Radio/Cable TV"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 524
    const/high16 v0, 0xb0a

    const-string v1, "Telephones/Pagers"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 525
    const/high16 v0, 0xb0b

    const-string v1, "Televisions"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 526
    const/high16 v0, 0xb0c

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 527
    const/high16 v0, 0xc00

    const-string v1, "DVDs/Movies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 528
    const/high16 v0, 0xc01

    const-string v1, "DVD/HD DVD/Blu-ray"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 529
    const/high16 v0, 0xc02

    const-string v1, "Film"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 530
    const/high16 v0, 0xc03

    const-string v1, "Laserdisc"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 531
    const/high16 v0, 0xc04

    const-string v1, "UMD"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 532
    const/high16 v0, 0xc05

    const-string v1, "VHS"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 533
    const/high16 v0, 0xc06

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 534
    const/high16 v0, 0xd00

    const-string v1, "Gift Certificates"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 535
    const/high16 v0, 0xd01

    const-string v1, "Books/Music/Movies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 536
    const/high16 v0, 0xd02

    const-string v1, "Clothing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 537
    const/high16 v0, 0xd03

    const-string v1, "Home/Garden"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 538
    const/high16 v0, 0xd04

    const-string v1, "Restaurant"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 539
    const/high16 v0, 0xd05

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 540
    const/high16 v0, 0xe00

    const-string v1, "Health/Beauty"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 541
    const/high16 v0, 0xe01

    const-string v1, "Bath/Body"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 542
    const/high16 v0, 0xe02

    const-string v1, "Coupons"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 543
    const/high16 v0, 0xe03

    const-string v1, "Dietary/Nutrition"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 544
    const/high16 v0, 0xe04

    const-string v1, "Fragrances"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 545
    const/high16 v0, 0xe05

    const-string v1, "Hair Care"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 546
    const/high16 v0, 0xe06

    const-string v1, "Hair Removal"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 547
    const/high16 v0, 0xe07

    const-string v1, "Health Care"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 548
    const/high16 v0, 0xe08

    const-string v1, "Makeup"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 549
    const/high16 v0, 0xe09

    const-string v1, "Nail"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 550
    const/high16 v0, 0xe0a

    const-string v1, "Massage"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 551
    const/high16 v0, 0xe0b

    const-string v1, "Medical/Special Needs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 552
    const/high16 v0, 0xe0c

    const-string v1, "Natural Therapies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 553
    const/high16 v0, 0xe0d

    const-string v1, "Oral Care"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 554
    const/high16 v0, 0xe0e

    const-string v1, "Over-the-Counter Medicine"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 555
    const/high16 v0, 0xe0f

    const-string v1, "Skin Care"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 556
    const/high16 v0, 0xe10

    const-string v1, "Tanning Beds/Lamps"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 557
    const/high16 v0, 0xe11

    const-string v1, "Tattoos/Body Art"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 558
    const/high16 v0, 0xe12

    const-string v1, "Vision Care"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 559
    const/high16 v0, 0xe13

    const-string v1, "Weight Management"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 560
    const/high16 v0, 0xe14

    const-string v1, "others "

    invoke-static {v0, v4, v7}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 561
    const/high16 v0, 0xf00

    const-string v1, "Home/Garden"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 562
    const/high16 v0, 0xf01

    const-string v1, "Bath"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 563
    const/high16 v0, 0xf02

    const-string v1, "Bedding"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 564
    const/high16 v0, 0xf03

    const-string v1, "Building/Hardware"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 565
    const/high16 v0, 0xf04

    const-string v1, "Dining/Bar"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 566
    const/high16 v0, 0xf05

    const-string v1, "Electrical/Solar"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 567
    const/high16 v0, 0xf06

    const-string v1, "Food/Wine"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 568
    const/high16 v0, 0xf07

    const-string v1, "Furniture"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 569
    const/high16 v0, 0xf08

    const-string v1, "Gardening/Plants"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 570
    const/high16 v0, 0xf09

    const-string v1, "Heating/Cooling/Air"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 571
    const/high16 v0, 0xf0a

    const-string v1, "Home D\u00e9cor"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 572
    const/high16 v0, 0xf0b

    const-string v1, "Home Security"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 573
    const/high16 v0, 0xf0c

    const-string v1, "Kitchen"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 574
    const/high16 v0, 0xf0d

    const-string v1, "Lamps/Lighting/Ceiling Fans"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 575
    const/high16 v0, 0xf0e

    const-string v1, "Major Appliances"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 576
    const/high16 v0, 0xf0f

    const-string v1, "Outdoor Power Equipment"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 577
    const/high16 v0, 0xf10

    const-string v1, "Patio/Grilling"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 578
    const/high16 v0, 0xf11

    const-string v1, "Pet Supplies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 579
    const/high16 v0, 0xf12

    const-string v1, "Plumbing/Fixtures"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 580
    const/high16 v0, 0xf13

    const-string v1, "Pools/Spas"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 581
    const/high16 v0, 0xf14

    const-string v1, "Rugs/Carpets"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 582
    const/high16 v0, 0xf15

    const-string v1, "Tools"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 583
    const/high16 v0, 0xf16

    const-string v1, "Vacuum Cleaners/Housekeeping"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 584
    const/high16 v0, 0xf17

    const-string v1, "Window Treatments"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 585
    const/high16 v0, 0xf18

    const-string v1, "others "

    invoke-static {v0, v4, v7}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 586
    const/high16 v0, 0x1000

    const-string v1, "Jewelry/Watches"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 587
    const/high16 v0, 0x1001

    const-string v1, "Body Jewelry"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 588
    const/high16 v0, 0x1002

    const-string v1, "Bracelets"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 589
    const/high16 v0, 0x1003

    const-string v1, "Designer Brands"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 590
    const/high16 v0, 0x1004

    const-string v1, "Earrings"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 591
    const/high16 v0, 0x1005

    const-string v1, "Hair Jewelry"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 592
    const/high16 v0, 0x1006

    const-string v1, "Jewelry Boxes/Supplies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 593
    const/high16 v0, 0x1007

    const-string v1, "Jewelry Sets"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 594
    const/high16 v0, 0x1008

    const-string v1, "Loose Beads/Diamonds/Gemstones"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 595
    const/high16 v0, 0x1009

    const-string v1, "Necklaces/Pendants"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 596
    const/high16 v0, 0x100a

    const-string v1, "Pins/Brooches"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 597
    const/high16 v0, 0x100b

    const-string v1, "Rings"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 598
    const/high16 v0, 0x100c

    const-string v1, "Watches"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 599
    const/high16 v0, 0x100d

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 600
    const/high16 v0, 0x1b00

    const-string v1, "Jobs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 601
    const/high16 v0, 0x1b01

    const-string v1, "Resumes"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 602
    const v0, 0x1b010100

    const-string v1, "Accounting/Finance"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 603
    const v0, 0x1b010200

    const-string v1, "Administration/Office"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 604
    const v0, 0x1b010300

    const-string v1, "Architect/Engineering"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 605
    const v0, 0x1b010400

    const-string v1, "Art/Media/Design  "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 606
    const v0, 0x1b010500

    const-string v1, "Biotech/Science "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 607
    const v0, 0x1b010600

    const-string v1, "Business/Management"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 608
    const v0, 0x1b010700

    const-string v1, "Customer Service "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 609
    const v0, 0x1b010800

    const-string v1, "Education "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 610
    const v0, 0x1b010900

    const-string v1, "Food/Beverage"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 611
    const v0, 0x1b010a00

    const-string v1, "Labor "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 612
    const v0, 0x1b010b00

    const-string v1, "Government "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 613
    const v0, 0x1b010c00

    const-string v1, "Human Resources "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 614
    const v0, 0x1b010d00

    const-string v1, "Internet Engineers "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 615
    const v0, 0x1b010e00

    const-string v1, "Legal/Paralegal "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 616
    const v0, 0x1b010f00

    const-string v1, "Manufacturing "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 617
    const v0, 0x1b011000

    const-string v1, "Marketing/Sales "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 618
    const v0, 0x1b011100

    const-string v1, "Medical/Health "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 619
    const v0, 0x1b011200

    const-string v1, "Nonprofit "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 620
    const v0, 0x1b011300

    const-string v1, "Real Estate "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 621
    const v0, 0x1b011400

    const-string v1, "Retail/Wholesale "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 622
    const v0, 0x1b011500

    const-string v1, "Salon/Spa/Fitness "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 623
    const v0, 0x1b011600

    const-string v1, "Security "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 624
    const v0, 0x1b011700

    const-string v1, "Skilled/Craft "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 625
    const v0, 0x1b011800

    const-string v1, "Software/QA/DBA "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 626
    const v0, 0x1b011900

    const-string v1, "Systems/Network"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 627
    const v0, 0x1b011a00

    const-string v1, "Technical support "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 628
    const v0, 0x1b011b00

    const-string v1, "Transport "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 629
    const v0, 0x1b011c00

    const-string v1, "TV/Film/Video "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 630
    const v0, 0x1b011d00

    const-string v1, "Web/Information Design "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 631
    const v0, 0x1b011e00

    const-string v1, "Writing/Editing"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 632
    const v0, 0x1b011f00

    const-string v1, "others"

    invoke-static {v0, v5, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 633
    const/high16 v0, 0x1b02

    const-string v1, "Vacancies"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 634
    const v0, 0x1b020100

    const-string v1, "Accounting/Finance"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 635
    const v0, 0x1b020200

    const-string v1, "Administration/Office"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 636
    const v0, 0x1b020300

    const-string v1, "Architect/Engineering"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 637
    const v0, 0x1b020400

    const-string v1, "Art/Media/Design  "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 638
    const v0, 0x1b020500

    const-string v1, "Biotech/Science "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 639
    const v0, 0x1b020600

    const-string v1, "Business/Management"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 640
    const v0, 0x1b020700

    const-string v1, "Customer Service "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 641
    const v0, 0x1b020800

    const-string v1, "Education "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 642
    const v0, 0x1b020900

    const-string v1, "Food/Beverage"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 643
    const v0, 0x1b020a00

    const-string v1, "Labor "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 644
    const v0, 0x1b020b00

    const-string v1, "Government "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 645
    const v0, 0x1b020c00

    const-string v1, "Human Resources "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 646
    const v0, 0x1b020d00

    const-string v1, "Internet Engineers "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 647
    const v0, 0x1b020e00

    const-string v1, "Legal/Paralegal "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 648
    const v0, 0x1b020f00

    const-string v1, "Manufacturing "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 649
    const v0, 0x1b021000

    const-string v1, "Marketing/Sales "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 650
    const v0, 0x1b021100

    const-string v1, "Medical/Health "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 651
    const v0, 0x1b021200

    const-string v1, "Nonprofit "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 652
    const v0, 0x1b021300

    const-string v1, "Real Estate "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 653
    const v0, 0x1b021400

    const-string v1, "Retail/Wholesale "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 654
    const v0, 0x1b021500

    const-string v1, "Salon/Spa/Fitness "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 655
    const v0, 0x1b021600

    const-string v1, "Security "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 656
    const v0, 0x1b021700

    const-string v1, "Skilled/Craft "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 657
    const v0, 0x1b021800

    const-string v1, "Software/QA/DBA "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 658
    const v0, 0x1b021900

    const-string v1, "Systems/Network"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 659
    const v0, 0x1b021a00

    const-string v1, "Technical support "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 660
    const v0, 0x1b021b00

    const-string v1, "Transport "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 661
    const v0, 0x1b021c00

    const-string v1, "TV/Film/Video "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 662
    const v0, 0x1b021d00

    const-string v1, "Web/Information Design "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 663
    const v0, 0x1b021e00

    const-string v1, "Writing/Editing"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 664
    const v0, 0x1b021f00

    const-string v1, "others"

    invoke-static {v0, v5, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 665
    const/high16 v0, 0x1100

    const-string v1, "Music/Instruments"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 666
    const/high16 v0, 0x1101

    const-string v1, "Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 667
    const/high16 v0, 0x1102

    const-string v1, "Cassettes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 668
    const/high16 v0, 0x1103

    const-string v1, "CDs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 669
    const/high16 v0, 0x1104

    const-string v1, "Digital Music Downloads"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 670
    const/high16 v0, 0x1105

    const-string v1, "DVD Audio"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 671
    const/high16 v0, 0x1106

    const-string v1, "Instruments"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 672
    const v0, 0x11060100

    const-string v1, "Brass"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 673
    const v0, 0x11060200

    const-string v1, "DJ Gear/Lighting"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 674
    const v0, 0x11060300

    const-string v1, "Electronic"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 675
    const v0, 0x11060400

    const-string v1, "Guitar"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 676
    const v0, 0x11060500

    const-string v1, "Harmonica"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 677
    const v0, 0x11060600

    const-string v1, "Instruction Books/CDs/Videos"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 678
    const v0, 0x11060700

    const-string v1, "Keyboard/Piano"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 679
    const v0, 0x11060800

    const-string v1, "String"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 680
    const v0, 0x11060900

    const-string v1, "Woodwind"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 681
    const v0, 0x11060a00

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 682
    const/high16 v0, 0x1107

    const-string v1, "Records"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 683
    const/high16 v0, 0x1108

    const-string v1, "Super Audio CDs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 684
    const/high16 v0, 0x1109

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 685
    const/high16 v0, 0x1a00

    const-string v1, "Personals"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 686
    const/high16 v0, 0x1a01

    const-string v1, "Women Seek Women"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 687
    const/high16 v0, 0x1a02

    const-string v1, "Women Seek Men"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 688
    const/high16 v0, 0x1a03

    const-string v1, "Men Seek Women"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 689
    const/high16 v0, 0x1a04

    const-string v1, "Men Seek Men"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 690
    const/high16 v0, 0x1a05

    const-string v1, "Misc Romance"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 691
    const/high16 v0, 0x1200

    const-string v1, "Pottery/Glass"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 692
    const/high16 v0, 0x1201

    const-string v1, "Glass"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 693
    const v0, 0x12010100

    const-string v1, "Art Glass"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 694
    const v0, 0x12010200

    const-string v1, "Glassware"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 695
    const/high16 v0, 0x1202

    const-string v1, "Pottery/China"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 696
    const v0, 0x12020100

    const-string v1, "Art Pottery"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 697
    const v0, 0x12020200

    const-string v1, "China/Dinnerware"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 698
    const/high16 v0, 0x1300

    const-string v1, "Real Estate"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 699
    const/high16 v0, 0x1301

    const-string v1, "Land"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 700
    const/high16 v0, 0x1302

    const-string v1, "Residential Homes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 701
    const/high16 v0, 0x1303

    const-string v1, "Commercial"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 702
    const/high16 v0, 0x1304

    const-string v1, "Manufactured Homes"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 703
    const/high16 v0, 0x1305

    const-string v1, "Timeshares Homepage"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 704
    const/high16 v0, 0x1306

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 705
    const/high16 v0, 0x1800

    const-string v1, "Services"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 706
    const/high16 v0, 0x1801

    const-string v1, "Small Businesses"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 707
    const v0, 0x18010100

    const-string v1, "Restaurants"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 708
    const v0, 0x18010101

    const-string v1, "Great American"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 709
    const v0, 0x18010102

    const-string v1, "Burgers/Grills"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 710
    const v0, 0x18010103

    const-string v1, "Chinese"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 711
    const v0, 0x18010104

    const-string v1, "French"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 712
    const v0, 0x18010105

    const-string v1, "Italian"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 713
    const v0, 0x18010106

    const-string v1, "Mexican"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 714
    const v0, 0x18010107

    const-string v1, "Indian"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 715
    const v0, 0x18010108

    const-string v1, "Pizza"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 716
    const v0, 0x18010109

    const-string v1, "Taiwanese"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 717
    const v0, 0x1801010a

    const-string v1, "Thailand"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 718
    const v0, 0x1801010b

    const-string v1, "Vietnam"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 719
    const v0, 0x1801010c

    const-string v1, "Japanese"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 720
    const v0, 0x1801010d

    const-string v1, "Korean"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 721
    const v0, 0x1801010e

    const-string v1, "others"

    invoke-static {v0, v5, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 722
    const v0, 0x18010200

    const-string v1, "Beauty"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 723
    const v0, 0x18010300

    const-string v1, "Cash"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 724
    const v0, 0x18010400

    const-string v1, "Tires"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 725
    const/high16 v0, 0x1802

    const-string v1, "Computer"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 726
    const/high16 v0, 0x1803

    const-string v1, "Creative"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 727
    const/high16 v0, 0x1804

    const-string v1, "Erotic"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 728
    const/high16 v0, 0x1805

    const-string v1, "Event"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 729
    const/high16 v0, 0x1806

    const-string v1, "Financial"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 730
    const/high16 v0, 0x1807

    const-string v1, "Legal"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 731
    const/high16 v0, 0x1808

    const-string v1, "Lessons"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 732
    const/high16 v0, 0x1809

    const-string v1, "Automotive"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 733
    const/high16 v0, 0x180a

    const-string v1, "Household"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 734
    const/high16 v0, 0x180b

    const-string v1, "Labor"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 735
    const/high16 v0, 0x180c

    const-string v1, "Move"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 736
    const/high16 v0, 0x180d

    const-string v1, "Skilled/Handyman"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 737
    const/high16 v0, 0x180e

    const-string v1, "Real Estate"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 738
    const/high16 v0, 0x180f

    const-string v1, "Gas/Oil"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 739
    const/high16 v0, 0x1810

    const-string v1, "Ads"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 740
    const/high16 v0, 0x1811

    const-string v1, "Therapeutic"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 741
    const/high16 v0, 0x1812

    const-string v1, "Travel/Vacation"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 742
    const/high16 v0, 0x1813

    const-string v1, "Write/Edit"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 743
    const/high16 v0, 0x1814

    const-string v1, "Translate"

    invoke-static {v0, v5, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 744
    const/high16 v0, 0x1815

    const-string v1, "others"

    invoke-static {v0, v5, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 745
    const/high16 v0, 0x1400

    const-string v1, "Sporting Goods"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 746
    const/high16 v0, 0x1401

    const-string v1, "Athletic Apparel"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 747
    const/high16 v0, 0x1402

    const-string v1, "Cycling"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 748
    const/high16 v0, 0x1403

    const-string v1, "Equestrian"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 749
    const/high16 v0, 0x1404

    const-string v1, "Exercise/Fitness"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 750
    const/high16 v0, 0x1405

    const-string v1, "Golf"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 751
    const/high16 v0, 0x1406

    const-string v1, "Hunting"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 752
    const/high16 v0, 0x1407

    const-string v1, "Airsoft"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 753
    const/high16 v0, 0x1408

    const-string v1, "Archery"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 754
    const/high16 v0, 0x1409

    const-string v1, "Baseball/Softball"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 755
    const/high16 v0, 0x140a

    const-string v1, "Basketball"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 756
    const/high16 v0, 0x140b

    const-string v1, "Billiards"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 757
    const/high16 v0, 0x140c

    const-string v1, "Bowling"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 758
    const/high16 v0, 0x140d

    const-string v1, "Boxing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 759
    const/high16 v0, 0x140e

    const-string v1, "Camping/Hiking/Backpacking"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 760
    const/high16 v0, 0x140f

    const-string v1, "Canoes/Kayaks/Rafts"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 761
    const/high16 v0, 0x1410

    const-string v1, "Climbing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 762
    const/high16 v0, 0x1411

    const-string v1, "Disc Golf"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 763
    const/high16 v0, 0x1412

    const-string v1, "Fishing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 764
    const/high16 v0, 0x1413

    const-string v1, "Football"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 765
    const/high16 v0, 0x1414

    const-string v1, "Go-Karts/Recreational"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 766
    const/high16 v0, 0x1415

    const-string v1, "Gymnastics"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 767
    const/high16 v0, 0x1416

    const-string v1, "Ice/Roller Hockey"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 768
    const/high16 v0, 0x1417

    const-string v1, "Ice Skating"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 769
    const/high16 v0, 0x1418

    const-string v1, "Indoor Games"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 770
    const/high16 v0, 0x1419

    const-string v1, "Inline/Roller Skating"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 771
    const/high16 v0, 0x141a

    const-string v1, "Lacrosse"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 772
    const/high16 v0, 0x141b

    const-string v1, "Martial Arts"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 773
    const/high16 v0, 0x141c

    const-string v1, "Paintball"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 774
    const/high16 v0, 0x141d

    const-string v1, "Racquetball/Squash"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 775
    const/high16 v0, 0x141e

    const-string v1, "Running"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 776
    const/high16 v0, 0x141f

    const-string v1, "Scooters"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 777
    const/high16 v0, 0x1420

    const-string v1, "Scuba/Snorkeling"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 778
    const/high16 v0, 0x1421

    const-string v1, "Skateboarding"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 779
    const/high16 v0, 0x1422

    const-string v1, "Skiing/Snowboarding"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 780
    const/high16 v0, 0x1423

    const-string v1, "Snowmobiling"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 781
    const/high16 v0, 0x1424

    const-string v1, "Soccer"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 782
    const/high16 v0, 0x1425

    const-string v1, "Sports Mem/Cards/Fan Shop"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 783
    const v0, 0x14250100

    const-string v1, "Autographs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 784
    const v0, 0x14250200

    const-string v1, "Cards"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 785
    const v0, 0x14250300

    const-string v1, "Fan Apparel/Souvenirs"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 786
    const v0, 0x14250400

    const-string v1, "Game Used Memorabilia"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 787
    const v0, 0x14250500

    const-string v1, "Manufacturer Authenticated"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 788
    const v0, 0x14250600

    const-string v1, "Vintage Sports Memorabilia"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 789
    const v0, 0x14250700

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 790
    const/high16 v0, 0x1426

    const-string v1, "Surfing/Wind Surfing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 791
    const/high16 v0, 0x1427

    const-string v1, "Swimming"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 792
    const/high16 v0, 0x1428

    const-string v1, "Tennis"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 793
    const/high16 v0, 0x1429

    const-string v1, "Triathlon"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 794
    const/high16 v0, 0x142a

    const-string v1, "Wakeboarding/Waterskiing"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 795
    const/high16 v0, 0x142b

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 796
    const/high16 v0, 0x1500

    const-string v1, "Travel"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 797
    const/high16 v0, 0x1501

    const-string v1, "Airline"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 798
    const/high16 v0, 0x1502

    const-string v1, "Car Rental"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 799
    const/high16 v0, 0x1503

    const-string v1, "Cruises"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 800
    const/high16 v0, 0x1504

    const-string v1, "Lodging"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 801
    const/high16 v0, 0x1505

    const-string v1, "Luggage"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 802
    const/high16 v0, 0x1506

    const-string v1, "Vacation Packages"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 803
    const/high16 v0, 0x1507

    const-string v1, "others "

    invoke-static {v0, v4, v7}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 804
    const/high16 v0, 0x1600

    const-string v1, "Video Games"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 805
    const/high16 v0, 0x1601

    const-string v1, "Accessories"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 806
    const v0, 0x16010100

    const-string v1, "3DO"

    invoke-static {v0, v4, v8}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 807
    const v0, 0x16010200

    const-string v1, "Atari"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 808
    const v0, 0x16010300

    const-string v1, "Commodore"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 809
    const v0, 0x16010400

    const-string v1, "Intellivision"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 810
    const v0, 0x16010500

    const-string v1, "Microsoft Xbox"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 811
    const v0, 0x16010600

    const-string v1, "Nintendo "

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 812
    const v0, 0x16010700

    const-string v1, "Sega"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 813
    const v0, 0x16010800

    const-string v1, "Sony"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 814
    const v0, 0x16010900

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 815
    const/high16 v0, 0x1602

    const-string v1, "Games"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 816
    const v0, 0x16020100

    const-string v1, "3DO"

    invoke-static {v0, v4, v8}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 817
    const v0, 0x16020200

    const-string v1, "Apple"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 818
    const v0, 0x16020300

    const-string v1, "Atari"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 819
    const v0, 0x16020400

    const-string v1, "Colecovision"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 820
    const v0, 0x16020500

    const-string v1, "Commodore"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 821
    const v0, 0x16020600

    const-string v1, "Intellivision"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 822
    const v0, 0x16020700

    const-string v1, "Microsoft"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 823
    const v0, 0x16020800

    const-string v1, "Nintendo"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 824
    const v0, 0x16020900

    const-string v1, "PC"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 825
    const v0, 0x16020a00

    const-string v1, "Sega"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 826
    const v0, 0x16020b00

    const-string v1, "Sony"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 827
    const v0, 0x16020c00

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 828
    const/high16 v0, 0x1603

    const-string v1, "Internet Games"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 829
    const v0, 0x16030100

    const-string v1, "Games"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 830
    const v0, 0x16030200

    const-string v1, "Guides"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 831
    const v0, 0x16030300

    const-string v1, "Software/PC Versions"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 832
    const v0, 0x16030400

    const-string v1, "Time Cards"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 833
    const v0, 0x16030500

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 834
    const/high16 v0, 0x1604

    const-string v1, "Systems"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 835
    const v0, 0x16040100

    const-string v1, "3DO"

    invoke-static {v0, v4, v8}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 836
    const v0, 0x16040200

    const-string v1, "Atari"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 837
    const v0, 0x16040300

    const-string v1, "Colecovision"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 838
    const v0, 0x16040400

    const-string v1, "Commodore"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 839
    const v0, 0x16040500

    const-string v1, "Intellivision"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 840
    const v0, 0x16040600

    const-string v1, "Microsoft"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 841
    const v0, 0x16040700

    const-string v1, "Nintendo"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 842
    const v0, 0x16040800

    const-string v1, "Sega"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 843
    const v0, 0x16040900

    const-string v1, "Sony"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 844
    const v0, 0x16040a00

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 845
    const/high16 v0, 0x1700

    const-string v1, "Everything Else"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 846
    const/high16 v0, 0x1701

    const-string v1, "Advertising Opportunities"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 847
    const/high16 v0, 0x1702

    const-string v1, "Education/Learning"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 848
    const/high16 v0, 0x1703

    const-string v1, "Funeral/Cemetery"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 849
    const/high16 v0, 0x1704

    const-string v1, "Genealogy"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 850
    const/high16 v0, 0x1705

    const-string v1, "Gifts/Occasions"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 851
    const/high16 v0, 0x1706

    const-string v1, "Information Products"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 852
    const/high16 v0, 0x1707

    const-string v1, "Mature Audiences"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 853
    const/high16 v0, 0x1708

    const-string v1, "Memberships"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 854
    const/high16 v0, 0x1709

    const-string v1, "Metaphysical"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 855
    const/high16 v0, 0x170a

    const-string v1, "Mystery Auctions"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 856
    const/high16 v0, 0x170b

    const-string v1, "Personal Security"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 857
    const/high16 v0, 0x170c

    const-string v1, "Religious Products/Supplies"

    invoke-static {v0, v4, v1}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 858
    const/high16 v0, 0x170d

    const-string v1, "others"

    invoke-static {v0, v4, v6}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 859
    sget-object v0, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public static getAnyLeaf()Lcom/fleapapa/helper/Category;
    .locals 3

    .prologue
    .line 90
    sget-object v2, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 91
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 93
    const/4 v2, 0x0

    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 92
    .restart local v0       #i:I
    :cond_0
    sget-object v2, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #i:I
    check-cast v0, Lcom/fleapapa/helper/Category;

    move-object v2, v0

    goto :goto_1

    .line 91
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCategory(I)Lcom/fleapapa/helper/Category;
    .locals 1
    .parameter "code"

    .prologue
    .line 65
    sget-object v0, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/helper/Category;

    return-object p0
.end method

.method public static getParent(I)Lcom/fleapapa/helper/Category;
    .locals 1
    .parameter "code"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/fleapapa/helper/Category;->parentCode(I)I

    move-result v0

    invoke-static {v0}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v0

    return-object v0
.end method

.method static initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;
    .locals 7
    .parameter "code"
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 148
    new-instance v0, Lcom/fleapapa/helper/Category;

    invoke-direct {v0, p0, p2, p1}, Lcom/fleapapa/helper/Category;-><init>(ILjava/lang/String;I)V

    .line 149
    .local v0, cat:Lcom/fleapapa/helper/Category;
    if-nez p0, :cond_0

    sput-object v0, Lcom/fleapapa/helper/Category;->root:Lcom/fleapapa/helper/Category;

    .line 151
    :cond_0
    invoke-direct {v0}, Lcom/fleapapa/helper/Category;->level()I

    move-result v1

    iput v1, v0, Lcom/fleapapa/helper/Category;->level:I

    .line 152
    iput-boolean v5, v0, Lcom/fleapapa/helper/Category;->isleaf:Z

    .line 153
    sget-object v1, Lcom/fleapapa/helper/Category;->cat5:[Lcom/fleapapa/helper/Category;

    iget v2, v0, Lcom/fleapapa/helper/Category;->level:I

    aput-object v0, v1, v2

    .line 154
    iget v1, v0, Lcom/fleapapa/helper/Category;->level:I

    if-lez v1, :cond_1

    .line 157
    sget-boolean v1, Lcom/fleapapa/helper/Category;->isnew:Z

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/fleapapa/helper/Category;->getParent(I)Lcom/fleapapa/helper/Category;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iget-object v1, v1, Lcom/fleapapa/helper/Category;->lastChild:Lcom/fleapapa/helper/Category;

    if-nez v1, :cond_3

    .line 160
    iget-object v1, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iput-object v0, v1, Lcom/fleapapa/helper/Category;->child:Lcom/fleapapa/helper/Category;

    .line 163
    :goto_1
    iget-object v1, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iput-object v0, v1, Lcom/fleapapa/helper/Category;->lastChild:Lcom/fleapapa/helper/Category;

    .line 164
    iget-object v1, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iput-boolean v6, v1, Lcom/fleapapa/helper/Category;->isleaf:Z

    .line 171
    :cond_1
    sget-object v1, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 172
    :goto_2
    return-object v1

    .line 157
    :cond_2
    sget-object v1, Lcom/fleapapa/helper/Category;->cat5:[Lcom/fleapapa/helper/Category;

    iget v2, v0, Lcom/fleapapa/helper/Category;->level:I

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iget-object v1, v1, Lcom/fleapapa/helper/Category;->lastChild:Lcom/fleapapa/helper/Category;

    iput-object v0, v1, Lcom/fleapapa/helper/Category;->sible:Lcom/fleapapa/helper/Category;

    goto :goto_1

    .line 167
    :cond_4
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v2, "Category.initCat: no parent %08x=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/fleapapa/helper/Category;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_2
.end method

.method static initCat(Ljava/lang/String;)Lcom/fleapapa/helper/Category;
    .locals 5
    .parameter "line"

    .prologue
    .line 175
    const-string v2, "\\\\"

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, t:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    .line 182
    :goto_0
    return-object v2

    .line 177
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    move-result-object v0

    .line 178
    .local v0, cat:Lcom/fleapapa/helper/Category;
    if-eqz v0, :cond_1

    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Category;->atime:Ljava/lang/String;

    .line 180
    :cond_1
    iget-object v2, v0, Lcom/fleapapa/helper/Category;->atime:Ljava/lang/String;

    sget-object v3, Lcom/fleapapa/helper/Category;->latime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fleapapa/util/MyUtil;->newer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, v0, Lcom/fleapapa/helper/Category;->atime:Ljava/lang/String;

    sput-object v2, Lcom/fleapapa/helper/Category;->latime:Ljava/lang/String;

    :cond_2
    move-object v2, v0

    .line 182
    goto :goto_0
.end method

.method static initialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    .line 186
    const/4 v0, 0x0

    const/16 v1, 0x13

    const-string v2, "-root-"

    invoke-static {v0, v1, v2}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;

    .line 189
    invoke-static {}, Lcom/fleapapa/helper/Category;->slowLoad()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/fleapapa/helper/Category;->fastLoad()I

    .line 192
    :cond_0
    sput-boolean v4, Lcom/fleapapa/helper/Category;->isnew:Z

    .line 193
    invoke-static {}, Lcom/fleapapa/helper/Category;->readNewCats()V

    .line 194
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Category.initialize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " categories /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v4
.end method

.method private level()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/fleapapa/helper/Category;->code:I

    invoke-static {v0}, Lcom/fleapapa/helper/Category;->level(I)I

    move-result v0

    return v0
.end method

.method private static level(I)I
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x4

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, -0x1

    .local v1, m:I
    :goto_0
    if-lt v0, v4, :cond_0

    move v2, v4

    .line 114
    :goto_1
    return v2

    .line 111
    :cond_0
    and-int v2, p0, v1

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    .line 112
    :cond_1
    shr-int/lit8 v2, v1, 0x8

    const v3, 0xffffff

    and-int v1, v2, v3

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static parentCode(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    const/16 v1, 0x100

    .local v1, m:I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 79
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 78
    :cond_0
    sub-int v2, v1, v3

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    sub-int v2, v1, v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p0

    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method static readNewCats()V
    .locals 7

    .prologue
    .line 219
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Category.readNewCats: read new cats from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/fleapapa/helper/Category;->ncatPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, br:Ljava/io/BufferedReader;
    const-wide/32 v4, -0x1e13380

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/fleapapa/helper/Category;->latime:Ljava/lang/String;

    .line 223
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lcom/fleapapa/helper/Category;->ncatPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 226
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 233
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 236
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 227
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-static {v3}, Lcom/fleapapa/helper/Category;->initCat(Ljava/lang/String;)Lcom/fleapapa/helper/Category;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 229
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .line 230
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Category.readNewCats: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 234
    :catch_1
    move-exception v4

    goto :goto_1

    .line 232
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 233
    :goto_3
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 235
    :cond_2
    :goto_4
    throw v4

    .line 234
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3           #line:Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 232
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 229
    :catch_4
    move-exception v4

    move-object v2, v4

    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method static slowLoad()I
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x0

    .line 238
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Category.slowLoad: /"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const v7, 0x7f050004

    .line 241
    .local v7, rid:I
    :try_start_0
    sget-object v9, Lcom/fleapapa/util/My;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, country:Ljava/lang/String;
    sget-object v9, Lcom/fleapapa/util/My;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, language:Ljava/lang/String;
    const-string v9, "es"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 244
    const v7, 0x7f050005

    .line 249
    :cond_0
    :goto_0
    sget-object v9, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 250
    .local v4, istream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 251
    .local v3, ireader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .local v0, breader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 280
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 281
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 282
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 283
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Category.slowLoad: ncat="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v9, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 288
    .end local v0           #breader:Ljava/io/BufferedReader;
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #ireader:Ljava/io/InputStreamReader;
    .end local v4           #istream:Ljava/io/InputStream;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    :goto_2
    return v9

    .line 246
    .restart local v1       #country:Ljava/lang/String;
    .restart local v5       #language:Ljava/lang/String;
    :cond_2
    const-string v9, "zh"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 247
    const-string v9, "tw"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f050006

    move v7, v9

    :goto_3
    goto :goto_0

    :cond_3
    const v9, 0x7f050003

    move v7, v9

    goto :goto_3

    .line 254
    .restart local v0       #breader:Ljava/io/BufferedReader;
    .restart local v3       #ireader:Ljava/io/InputStreamReader;
    .restart local v4       #istream:Ljava/io/InputStream;
    .restart local v6       #line:Ljava/lang/String;
    :cond_4
    const-string v9, "^\\s+"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 255
    const-string v9, ","

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, tk:[Ljava/lang/String;
    array-length v9, v8

    if-lt v9, v15, :cond_1

    .line 258
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v8, v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 259
    :cond_5
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v8, v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 261
    :cond_6
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 262
    const/4 v10, 0x1

    aget-object v10, v8, v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 263
    const/4 v11, 0x2

    aget-object v11, v8, v11

    const-string v12, "\""

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 260
    invoke-static {v9, v10, v11}, Lcom/fleapapa/helper/Category;->initCat(IILjava/lang/String;)Lcom/fleapapa/helper/Category;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 286
    .end local v0           #breader:Ljava/io/BufferedReader;
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #ireader:Ljava/io/InputStreamReader;
    .end local v4           #istream:Ljava/io/InputStream;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #tk:[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 287
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Category.initialize: fail to load categories.txt!!+("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v14

    .line 288
    goto/16 :goto_2
.end method

.method static writeNewCats()V
    .locals 10

    .prologue
    .line 198
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Category.writeNewCats: write new cats to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/fleapapa/helper/Category;->ncatPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    sget-object v7, Lcom/fleapapa/helper/Category;->ncatPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 202
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_1
    sget-object v6, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 203
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 208
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 217
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v4           #i:I
    .end local v5           #size:I
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 204
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #i:I
    .restart local v5       #size:I
    :cond_1
    :try_start_3
    sget-object v6, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/Category;

    .line 205
    .local v2, cat:Lcom/fleapapa/helper/Category;
    iget-object v6, v2, Lcom/fleapapa/helper/Category;->atime:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 203
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_2
    const-string v6, "%d;%d;%s;%s\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v2, Lcom/fleapapa/helper/Category;->code:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v2, Lcom/fleapapa/helper/Category;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v2, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v2, Lcom/fleapapa/helper/Category;->atime:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 210
    .end local v2           #cat:Lcom/fleapapa/helper/Category;
    .end local v4           #i:I
    .end local v5           #size:I
    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v0, v1

    .line 211
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Category.writeNewCats: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v6

    goto :goto_1

    .line 213
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 214
    :goto_4
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 216
    :cond_3
    :goto_5
    throw v6

    .line 215
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #i:I
    .restart local v5       #size:I
    :catch_2
    move-exception v6

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v4           #i:I
    .end local v5           #size:I
    :catch_3
    move-exception v7

    goto :goto_5

    .line 213
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 210
    :catch_4
    move-exception v6

    move-object v3, v6

    goto :goto_3

    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #i:I
    .restart local v5       #size:I
    :cond_4
    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/fleapapa/helper/Category;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/Category;

    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/Category;->compareTo(Lcom/fleapapa/helper/Category;)I

    move-result v0

    return v0
.end method

.method public getChilds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/Category;>;"
    iget-object v0, p0, Lcom/fleapapa/helper/Category;->child:Lcom/fleapapa/helper/Category;

    .local v0, cat:Lcom/fleapapa/helper/Category;
    :goto_0
    if-nez v0, :cond_0

    .line 104
    return-object v1

    .line 103
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, v0, Lcom/fleapapa/helper/Category;->sible:Lcom/fleapapa/helper/Category;

    goto :goto_0
.end method

.method public getFirstLeaf()Lcom/fleapapa/helper/Category;
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 98
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/Category;->getChilds()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/helper/Category;

    invoke-virtual {p0}, Lcom/fleapapa/helper/Category;->getFirstLeaf()Lcom/fleapapa/helper/Category;

    move-result-object v0

    goto :goto_0
.end method

.method public getLevel1()Lcom/fleapapa/helper/Category;
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/fleapapa/helper/Category;->code:I

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/fleapapa/helper/Category;
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fleapapa/helper/Category;->code:I

    invoke-static {v0}, Lcom/fleapapa/helper/Category;->getParent(I)Lcom/fleapapa/helper/Category;

    move-result-object v0

    return-object v0
.end method

.method public getReversePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, path:Ljava/lang/String;
    move-object v0, p0

    .local v0, c:Lcom/fleapapa/helper/Category;
    :goto_0
    iget v2, v0, Lcom/fleapapa/helper/Category;->code:I

    if-nez v2, :cond_0

    .line 132
    return-object v1

    .line 131
    :cond_0
    const-string v2, "<"

    iget-object v3, v0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lcom/fleapapa/helper/Category;->getParent()Lcom/fleapapa/helper/Category;

    move-result-object v0

    goto :goto_0
.end method

.method public isChildOf(I)Z
    .locals 2
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    .line 82
    iget v0, p0, Lcom/fleapapa/helper/Category;->code:I

    if-nez v0, :cond_0

    move v0, v1

    .line 84
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fleapapa/helper/Category;->code:I

    invoke-static {v0}, Lcom/fleapapa/helper/Category;->parentCode(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isChildOf(Lcom/fleapapa/helper/Category;)Z
    .locals 1
    .parameter "cat"

    .prologue
    .line 87
    iget v0, p1, Lcom/fleapapa/helper/Category;->code:I

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Category;->isChildOf(I)Z

    move-result v0

    return v0
.end method

.method public isSible(Lcom/fleapapa/helper/Category;)Z
    .locals 2
    .parameter "cat"

    .prologue
    .line 107
    iget-object v0, p1, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iget-object v1, p0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPath(Lcom/fleapapa/helper/Category;)Z
    .locals 2
    .parameter "leaf"

    .prologue
    .line 120
    iget v0, p1, Lcom/fleapapa/helper/Category;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    iget v0, p1, Lcom/fleapapa/helper/Category;->code:I

    iget v1, p0, Lcom/fleapapa/helper/Category;->code:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/fleapapa/helper/Category;->getParent()Lcom/fleapapa/helper/Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/Category;->onPath(Lcom/fleapapa/helper/Category;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    return-object v0
.end method
