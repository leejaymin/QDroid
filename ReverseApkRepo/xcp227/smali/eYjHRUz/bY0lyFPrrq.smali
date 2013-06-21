.class public final LeYjHRUz/bY0lyFPrrq;
.super Ljava/lang/Object;
.source "JUST_GIVE_IT_UP"


# static fields
.field private static final iTvPpNi6JhNfMTM:I

.field protected static iTvPpNi6JhNfMTM:Landroid/content/Context;

.field private static final sfRcbHtPzM28L:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:Landroid/content/Context;

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:I

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, LeYjHRUz/bY0lyFPrrq;->sfRcbHtPzM28L:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static CvbDI5DR4XRRjATqbP(Ljava/io/File;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tequnique.camerax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static CvbDI5DR4XRRjATqbP(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "%!KeyPackage%"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "%!KeyPackage%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.tequnique.camerax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tequnique.camerax"

    const/16 v1, 0x1c

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, "com.tequnique.camerax"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    invoke-static {v0}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected static CvbDI5DR4XRRjATqbP()[Landroid/content/pm/Signature;
    .locals 5

    const-string v0, "148"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v1, v0, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    const-string v4, "308203563082023ea00302010202044db67135300d06092a864886f70d0101050500306d310b3009060355040613024154310b3009060355040813026e61311530130603550407130c47756e7472616d73646f726631123010060355040a13096d65682e617420495431123010060355040b13096d65682e617420495431123010060355040313096d65682e6174204954301e170d3131303432363037313630355a170d3338303931313037313630355a306d310b3009060355040613024154310b3009060355040813026e61311530130603550407130c47756e7472616d73646f726631123010060355040a13096d65682e617420495431123010060355040b13096d65682e617420495431123010060355040313096d65682e617420495430820122300d06092a864886f70d01010105000382010f003082010a0282010100c6715b7e389a98423109b11ab3d8dc6c136578391d1edb55240d6b6b19140b01cc31f92f2d6dc760bb95a0109c305addde91577cc53a455c58cab4dae367219fe0b90ccf9369a4fe7ac4bfafeb8a9ea53c7d540d1cfff75ce46d4fe382e8e9bb6ccee314760d035cb4414017733079ad7dfc22c88ac9101f54edd352b3be0040d80d0fc5a6b541fbac7d5d5ab0a69f2d9eb4941278b599942715319f4b76b418d5bc91cfbe1f85cf183f40a7d45ab0fb143f699c2256e2d05d17d481e90e4269376a57278131c05cd1e404146ad82a152406cf289306a34950f110a5157d45d96bc87dbf67d0539a96b7476d241153d128267d185afe4efe2fe7d63b45d825330203010001300d06092a864886f70d010105050003820101008c1c1acf30f290386b7e6075aee60d2e82496df0777d54f178fe4a5c63810bc965a77db797f0b7890bfce93332f0ab244d58e3950fb245f8480a4e6f08494ea0887cadd97aabd85dd8a1d550adc17ce21266fec406ef78132031dc0e7ec36ff7788eee5149023acf494426024f7a87625dd708fad29733b5f222b2008e970bcd609f8e6f44d213e1ed4898bb3b9fdabf67dbe9afcf59eb17619050aba00279495fa209266af6a89398806e5bda477d4193ff886ecdc1fb8b73cb701e6c7ab3080a99e576a6fe7e975d50d66ca9802dca98e681caa201dd050298e3e13fd9e8a449648d62c9fedd152ffa11146fd5a7648e4cec63b1a2c8116acb036305db15a9"

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static DbRxHdVbpFhFX(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    invoke-static {v0}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public static HEt58lh1RyQZ8A7NWt(Landroid/content/pm/PackageManager;II)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LeYjHRUz/bY0lyFPrrq;->HEt58lh1RyQZ8A7NWt(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static HEt58lh1RyQZ8A7NWt(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:I

    if-nez v1, :cond_3

    const-string v1, "com.tequnique.camerax"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.tequnique.camerax"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget v1, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, -0x4

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_4
    sget v1, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v0, v3

    goto :goto_1
.end method

.method public static XGOKMGUoqLyNB3Kjh(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v0, v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public static dGwm5iBnuSJ6yKYX(Ljava/io/File;)J
    .locals 4

    const-string v0, "1347616731757"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-wide v0
.end method

.method public static dW6FjFVbMDreu(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return-object v0
.end method

.method public static hrWbRUXUD3(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, LeYjHRUz/bY0lyFPrrq;->uJMOfIccFUnb(Landroid/content/Context;)V

    return-void
.end method

.method public static jBa0OOjN4ZzIQPx()V
    .locals 0

    return-void
.end method

.method public static kVtq2iu9i(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x2e

    invoke-static {v0}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lbgdFhF0TyrrYsA58I(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.tequnique.camerax"

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-static {}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP()[Landroid/content/pm/Signature;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x7

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, LeYjHRUz/bY0lyFPrrq;->sfRcbHtPzM28L:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    throw v0

    :cond_2
    invoke-static {p1}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "com.tequnique.camerax"

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static ltY2FhKAUt0wIKhP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static mlScUURn0EbXv5g(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static oWubqRj2Zfce6x()V
    .locals 0

    return-void
.end method

.method public static uJMOfIccFUnb(Landroid/content/Context;)V
    .locals 1

    sget-object v0, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, LeYjHRUz/bY0lyFPrrq;->iTvPpNi6JhNfMTM:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static zhYGQhi46snbn(Ljava/io/File;)J
    .locals 4

    const-string v0, "698648"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, LeYjHRUz/bY0lyFPrrq;->CvbDI5DR4XRRjATqbP(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, LeYjHRUz/KdLlKBTc;->UGXT3rTQM3z5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-wide v0
.end method
