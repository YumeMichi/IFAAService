.class public Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;
.super Landroid/app/Service;
.source "IfaaManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;
    }
.end annotation


# static fields
.field private static final HAS_CUSTOM_FINGERPRINTER:Z

.field private static mFpSensorLocationParam:Ljava/lang/String;


# instance fields
.field private mBinder:Lorg/ifaa/aidl/manager/IfaaManagerService$Stub;

.field private mDaemon:Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

.field private mFPManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput v2, v0, v1

    .line 52
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->HAS_CUSTOM_FINGERPRINTER:Z

    const-string v0, "{\'type\': 0, \'fullView\': {\'startX\': 452, \'startY\': 1970,\'width\': 174, \'height\': 174, \'navConflict\': true}}"

    .line 58
    sput-object v0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFpSensorLocationParam:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mDaemon:Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    .line 83
    new-instance v0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;-><init>(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;)V

    iput-object v0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mBinder:Lorg/ifaa/aidl/manager/IfaaManagerService$Stub;

    return-void
.end method

.method static synthetic access$000(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;[B)[B
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->processCmdImpl([B)[B

    move-result-object p0

    return-object p0
.end method

.method private ensureFingerprintServiceAvailable()V
    .locals 3

    .line 404
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.fingerprint"

    .line 406
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fingerprint"

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    return-void
.end method

.method private processCmdImpl([B)[B
    .locals 6

    const-string v0, "IfaaManagerServiceImpl"

    const-string v1, "processCmd +"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;-><init>(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;)V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;->mresult:Ljava/util/ArrayList;

    .line 193
    iget-object v2, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mDaemon:Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    if-nez v2, :cond_0

    .line 195
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;->getService()Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    move-result-object v2

    iput-object v2, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mDaemon:Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get Ifaadaemon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mDaemon:Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;

    if-eqz v2, :cond_1

    .line 203
    :try_start_1
    invoke-direct {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v2, p1, v3, v1}, Lvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa;->sendCommand(Ljava/util/ArrayList;ILvendor/oneplus/hardware/ifaa/V2_0/IOneplusIfaa$sendCommandCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed while calling sendCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "didn\'t call server at all...."

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCmd -, ret = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;->mStatus:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, v1, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$SendCommandCallback;->mresult:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method private toByteArray([B)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 170
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 172
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private toByteArray([BII)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 163
    aget-byte v1, p1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private toBytes(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 180
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDeviceModelImpl()Ljava/lang/String;
    .locals 2

    const-string p0, "ro.product.model"

    .line 242
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device model is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IfaaManagerServiceImpl"

    invoke-static {v1, v0}, Lorg/ifaa/aidl/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ONEPLUS-A5000"

    if-eqz p0, :cond_e

    const-string v1, "A3"

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "5801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "5811"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "A5"

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "6859"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "7801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "A6"

    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "7819"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "8801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "8811"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v1, "SS882"

    .line 252
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "SS883"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "SS885"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "SS886"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "GM190"

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "GM191"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "GM192"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "HD190"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "HD191"

    .line 254
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "HD192"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "IN201"

    .line 256
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "IN202"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "AC20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "KB200"

    .line 258
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "LE210"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "LE211"

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "ONEPLUS-LE2110"

    return-object p0

    :cond_6
    const-string v1, "LE212"

    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "ONEPLUS-LE2120"

    return-object p0

    :cond_7
    return-object v0

    :cond_8
    :goto_0
    const-string p0, "ONEPLUS-KB2000"

    return-object p0

    :cond_9
    :goto_1
    const-string p0, "ONEPLUS-IN2010"

    return-object p0

    :cond_a
    :goto_2
    const-string p0, "ONEPLUS-GM1910"

    return-object p0

    :cond_b
    :goto_3
    const-string p0, "ONEPLUS-A6000"

    return-object p0

    :cond_c
    :goto_4
    return-object v0

    :cond_d
    :goto_5
    const-string p0, "ONEPLUS-A3000"

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getEnabledImpl(I)I
    .locals 3

    .line 327
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 329
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x3eb

    return p0

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0x3e8

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    const/16 v2, 0x3e9

    if-ne p1, v0, :cond_4

    .line 350
    invoke-direct {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->ensureFingerprintServiceAvailable()V

    .line 352
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_2

    return v2

    .line 356
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x3ea

    return p0

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public getExtInfoImpl(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p1, "org.ifaa.ext.key.GET_SENSOR_LOCATION"

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "IfaaManagerServiceImpl"

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5060189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x438

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x506018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x438

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x506018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x438

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x5060186

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/2addr p0, p1

    div-int/lit16 p0, p0, 0x438

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\'type\': 0, \'fullView\': {\'startX\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \'startY\': "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \'width\': "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \'height\': "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", \'navConflict\': true}}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFpSensorLocationParam:Ljava/lang/String;

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFpSensorLocationParam: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFpSensorLocationParam:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "screenWidth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/ifaa/aidl/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFpSensorLocationParam:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "getExtInfo: Didn\'t request supported ext info"

    .line 300
    invoke-static {p2, p0}, Lorg/ifaa/aidl/manager/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getIDListImpl(I)[I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    new-array p0, v0, [I

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 384
    invoke-direct {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->ensureFingerprintServiceAvailable()V

    .line 386
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mFPManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_1

    new-array p0, v0, [I

    return-object p0

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p0

    .line 390
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 392
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 393
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    aput v1, p1, v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIDList i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IfaaManagerServiceImpl"

    invoke-static {v2, v1}, Lorg/ifaa/aidl/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    new-array p0, v0, [I

    return-object p0
.end method

.method public getSupportBIOTypesImpl()I
    .locals 2

    .line 219
    sget-boolean p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->HAS_CUSTOM_FINGERPRINTER:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 222
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bioType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IfaaManagerServiceImpl"

    invoke-static {v1, v0}, Lorg/ifaa/aidl/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getVersionImpl()I
    .locals 2

    .line 273
    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getDeviceModelImpl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ONEPLUS-GM1910"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getDeviceModelImpl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ONEPLUS-IN2010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getDeviceModelImpl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ONEPLUS-KB2000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getDeviceModelImpl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ONEPLUS-LE2110"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getDeviceModelImpl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ONEPLUS-LE2120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->mBinder:Lorg/ifaa/aidl/manager/IfaaManagerService$Stub;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public setExtInfoImpl(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startBIOManagerImpl(I)I
    .locals 2

    const/4 p1, 0x0

    .line 228
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p0

    .line 233
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return p1
.end method
