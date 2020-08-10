.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;


# instance fields
.field private bitField0_:I

.field private bitField1_:I

.field private bitField2_:I

.field private mASConfirmTimeout_:Z

.field private mAutoSportStartEnabled_:Z

.field private mAutoSportStopEnabled_:Z

.field private mClearIndoorRun_:Z

.field private mClearWristOnState_:Z

.field private mGpsIntevalSetting_:I

.field private mHRRSection1_:I

.field private mHRRSection2_:I

.field private mHRRSection3_:I

.field private mHRRSection4_:I

.field private mHRRSection5_:I

.field private mIs3DDistanceEnabled_:Z

.field private mIsAlldayAutoHeartRateEnabled_:Z

.field private mIsFlipEnabled_:Z

.field private mIsMeasureHrInCrossCountryRun_:Z

.field private mIsMedalTodayStepGoal1AlertEnabled_:Z

.field private mIsMedalTodayStepGoal2AlertEnabled_:Z

.field private mIsMedalTodayStepGoal3AlertEnabled_:Z

.field private mIsMedalTotalStepGoal1AlertEnabled_:Z

.field private mIsMedalTotalStepGoal2AlertEnabled_:Z

.field private mIsMedalTotalStepGoal3AlertEnabled_:Z

.field private mIsMedalTotalStepGoal4AlertEnabled_:Z

.field private mIsSREveryXXCountAlertEnabled_:Z

.field private mIsSREveryXXTimerAlertEnabled_:Z

.field private mIsSRTargetCountAlertEnabled_:Z

.field private mIsSafeHeartRateAlertEnabled_:Z

.field private mIsSedentaryMinAlertEnabled_:Z

.field private mIsSporKiloMeterAlertEnabled_:Z

.field private mIsSportAutoPauseEnabled_:Z

.field private mIsSportFastTargetPaceAlertEnabled_:Z

.field private mIsSportHrZoneAlertEnabled_:Z

.field private mIsSportLapMeterAlertEnabled_:Z

.field private mIsSportTargetCaloriesAlertEnabled_:Z

.field private mIsSportTargetDistanceAlertEnabled_:Z

.field private mIsSportTargetPaceAlertEnabled_:Z

.field private mIsSportTargetTimerAlertEnabled_:Z

.field private mIsTodayStepGoalAlertEnabled_:Z

.field private mIsUseThaWorkoutSet_:Z

.field private mIsWearDetectEnabled_:Z

.field private mManuallySectionRecordt_:Z

.field private mMaxHeartRate_:I

.field private mMedalTodayStepGoal1_:I

.field private mMedalTodayStepGoal2_:I

.field private mMedalTodayStepGoal3_:I

.field private mMedalTotalStepGoal1_:I

.field private mMedalTotalStepGoal2_:I

.field private mMedalTotalStepGoal3_:I

.field private mMedalTotalStepGoal4_:I

.field private mNavigationModeSetting_:I

.field private mNotDetectStarToday_:Z

.field private mNotDetectStopToday_:Z

.field private mRabitSpeed_:F

.field private mRestHeartRate_:I

.field private mSREveryXXCount_:I

.field private mSREveryXXTimer_:I

.field private mSRGroupNum_:I

.field private mSRTargetCount_:I

.field private mSedentaryMin_:I

.field private mSportAutoPauseSpeedTh_:F

.field private mSportCorrectDistance_:F

.field private mSportFastTargetPace_:F

.field private mSportHrZoneLower_:F

.field private mSportHrZoneUpper_:F

.field private mSportKiloMeter_:F

.field private mSportLapMeter_:F

.field private mSportSafeHeartRate_:I

.field private mSportTargetCalories_:F

.field private mSportTargetDistance_:F

.field private mSportTargetPace_:F

.field private mSportTargetTimer_:F

.field private mSportTargetTrainingEffect_:I

.field public mStepModel:[I

.field private mSwimPoolLen_:I

.field private mTodayStepGoal_:I

.field private mUserAge_:I

.field private mUserBasicCalories_:F

.field private mUserBodyFatRate_:I

.field private mUserExerciseRate_:I

.field private mUserHeightMeter_:F

.field private mUserIsLeftHander_:Z

.field private mUserIsVeganism_:Z

.field private mUserIsWearOnLeft_:Z

.field private mUserSex_:I

.field private mUserSkin_:I

.field private mUserStepMeter_:F

.field private mUserWeightKg_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1771
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 1772
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1773
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    if-nez v0, :cond_1

    .line 139
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2999
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2993
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 5

    .prologue
    const v4, 0xc350

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1776
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 1777
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1778
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1779
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    .line 1780
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    .line 1781
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    .line 1782
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    .line 1783
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    .line 1784
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    .line 1785
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    .line 1786
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    .line 1787
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    .line 1788
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    .line 1789
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    .line 1790
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    .line 1791
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    .line 1792
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    .line 1793
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    .line 1794
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    .line 1795
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    .line 1796
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    .line 1797
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    .line 1798
    iput v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    .line 1799
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    .line 1800
    iput v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    .line 1801
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    .line 1802
    const v0, 0x493e0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    .line 1803
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    .line 1804
    const v0, 0xf4240

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    .line 1805
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    .line 1806
    const v0, 0x4c4b40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    .line 1807
    iput-boolean v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    .line 1808
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    .line 1809
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    .line 1810
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    .line 1811
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    .line 1812
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    .line 1813
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    .line 1814
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    .line 1815
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    .line 1816
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    .line 1817
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    .line 1818
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    .line 1819
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    .line 1820
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    .line 1821
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    .line 1822
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    .line 1823
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    .line 1824
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    .line 1825
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    .line 1826
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    .line 1827
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    .line 1828
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    .line 1829
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    .line 1830
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    .line 1831
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    .line 1832
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    .line 1833
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    .line 1834
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    .line 1835
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    .line 1836
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    .line 1837
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    .line 1838
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    .line 1839
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    .line 1840
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    .line 1841
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    .line 1842
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    .line 1843
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    .line 1844
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    .line 1845
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    .line 1846
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    .line 1847
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    .line 1848
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    .line 1849
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    .line 1850
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    .line 1851
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    .line 1852
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    .line 1853
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    .line 1854
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    .line 1855
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    .line 1856
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    .line 1857
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    .line 1858
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    .line 1859
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    .line 1860
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    .line 1861
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    .line 1862
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    .line 1863
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    .line 1864
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1866
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->cachedSize:I

    .line 1867
    return-object p0
.end method

.method public clearMASConfirmTimeout()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    .line 1634
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1635
    return-object p0
.end method

.method public clearMAutoSportStartEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    .line 1691
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1692
    return-object p0
.end method

.method public clearMAutoSportStopEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    .line 1710
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1711
    return-object p0
.end method

.method public clearMClearIndoorRun()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    .line 1729
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1730
    return-object p0
.end method

.method public clearMClearWristOnState()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    .line 1615
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1616
    return-object p0
.end method

.method public clearMGpsIntevalSetting()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1766
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    .line 1767
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1768
    return-object p0
.end method

.method public clearMHRRSection1()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1348
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    .line 1349
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1350
    return-object p0
.end method

.method public clearMHRRSection2()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1367
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    .line 1368
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1369
    return-object p0
.end method

.method public clearMHRRSection3()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1386
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    .line 1387
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1388
    return-object p0
.end method

.method public clearMHRRSection4()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    .line 1406
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1407
    return-object p0
.end method

.method public clearMHRRSection5()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1424
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    .line 1425
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1426
    return-object p0
.end method

.method public clearMIs3DDistanceEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    .line 1235
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1236
    return-object p0
.end method

.method public clearMIsAlldayAutoHeartRateEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    .line 947
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 948
    return-object p0
.end method

.method public clearMIsFlipEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    .line 988
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 989
    return-object p0
.end method

.method public clearMIsMeasureHrInCrossCountryRun()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    .line 1197
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1198
    return-object p0
.end method

.method public clearMIsMedalTodayStepGoal1AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    .line 472
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 473
    return-object p0
.end method

.method public clearMIsMedalTodayStepGoal2AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    .line 510
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 511
    return-object p0
.end method

.method public clearMIsMedalTodayStepGoal3AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    .line 548
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 549
    return-object p0
.end method

.method public clearMIsMedalTotalStepGoal1AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    .line 586
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 587
    return-object p0
.end method

.method public clearMIsMedalTotalStepGoal2AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    .line 624
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 625
    return-object p0
.end method

.method public clearMIsMedalTotalStepGoal3AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    .line 662
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 663
    return-object p0
.end method

.method public clearMIsMedalTotalStepGoal4AlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    .line 700
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 701
    return-object p0
.end method

.method public clearMIsSREveryXXCountAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    .line 1501
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1502
    return-object p0
.end method

.method public clearMIsSREveryXXTimerAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    .line 1539
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1540
    return-object p0
.end method

.method public clearMIsSRTargetCountAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    .line 1596
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1597
    return-object p0
.end method

.method public clearMIsSafeHeartRateAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    .line 301
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 302
    return-object p0
.end method

.method public clearMIsSedentaryMinAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    .line 225
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 226
    return-object p0
.end method

.method public clearMIsSporKiloMeterAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    .line 1140
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1141
    return-object p0
.end method

.method public clearMIsSportAutoPauseEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    .line 320
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 321
    return-object p0
.end method

.method public clearMIsSportFastTargetPaceAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    .line 1292
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1293
    return-object p0
.end method

.method public clearMIsSportHrZoneAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    .line 1102
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1103
    return-object p0
.end method

.method public clearMIsSportLapMeterAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    .line 263
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 264
    return-object p0
.end method

.method public clearMIsSportTargetCaloriesAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    .line 1045
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1046
    return-object p0
.end method

.method public clearMIsSportTargetDistanceAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    .line 396
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 397
    return-object p0
.end method

.method public clearMIsSportTargetPaceAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    .line 434
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 435
    return-object p0
.end method

.method public clearMIsSportTargetTimerAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    .line 358
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 359
    return-object p0
.end method

.method public clearMIsTodayStepGoalAlertEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    .line 187
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 188
    return-object p0
.end method

.method public clearMIsUseThaWorkoutSet()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    .line 1216
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1217
    return-object p0
.end method

.method public clearMIsWearDetectEnabled()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    .line 1007
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1008
    return-object p0
.end method

.method public clearMManuallySectionRecordt()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    .line 1444
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1445
    return-object p0
.end method

.method public clearMMaxHeartRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1310
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    .line 1311
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1312
    return-object p0
.end method

.method public clearMMedalTodayStepGoal1()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 452
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    .line 453
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 454
    return-object p0
.end method

.method public clearMMedalTodayStepGoal2()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 490
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    .line 491
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 492
    return-object p0
.end method

.method public clearMMedalTodayStepGoal3()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 528
    const v0, 0xc350

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    .line 529
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 530
    return-object p0
.end method

.method public clearMMedalTotalStepGoal1()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 566
    const v0, 0xc350

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    .line 567
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 568
    return-object p0
.end method

.method public clearMMedalTotalStepGoal2()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 604
    const v0, 0x493e0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    .line 605
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 606
    return-object p0
.end method

.method public clearMMedalTotalStepGoal3()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 642
    const v0, 0xf4240

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    .line 643
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 644
    return-object p0
.end method

.method public clearMMedalTotalStepGoal4()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 680
    const v0, 0x4c4b40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    .line 681
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 682
    return-object p0
.end method

.method public clearMNavigationModeSetting()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1747
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    .line 1748
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1749
    return-object p0
.end method

.method public clearMNotDetectStarToday()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    .line 1653
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1654
    return-object p0
.end method

.method public clearMNotDetectStopToday()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    .line 1672
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1673
    return-object p0
.end method

.method public clearMRabitSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1462
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    .line 1463
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1464
    return-object p0
.end method

.method public clearMRestHeartRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1329
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    .line 1330
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1331
    return-object p0
.end method

.method public clearMSREveryXXCount()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1481
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    .line 1482
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1483
    return-object p0
.end method

.method public clearMSREveryXXTimer()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    .line 1520
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1521
    return-object p0
.end method

.method public clearMSRGroupNum()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    .line 1558
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1559
    return-object p0
.end method

.method public clearMSRTargetCount()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    .line 1577
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1578
    return-object p0
.end method

.method public clearMSedentaryMin()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    .line 206
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 207
    return-object p0
.end method

.method public clearMSportAutoPauseSpeedTh()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1253
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    .line 1254
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1255
    return-object p0
.end method

.method public clearMSportCorrectDistance()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    .line 966
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 967
    return-object p0
.end method

.method public clearMSportFastTargetPace()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    .line 1273
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1274
    return-object p0
.end method

.method public clearMSportHrZoneLower()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1063
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    .line 1064
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1065
    return-object p0
.end method

.method public clearMSportHrZoneUpper()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1082
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    .line 1083
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1084
    return-object p0
.end method

.method public clearMSportKiloMeter()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1120
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    .line 1121
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1122
    return-object p0
.end method

.method public clearMSportLapMeter()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    .line 244
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 245
    return-object p0
.end method

.method public clearMSportSafeHeartRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    .line 282
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public clearMSportTargetCalories()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    .line 1026
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1027
    return-object p0
.end method

.method public clearMSportTargetDistance()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    .line 377
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 378
    return-object p0
.end method

.method public clearMSportTargetPace()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    .line 415
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 416
    return-object p0
.end method

.method public clearMSportTargetTimer()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    .line 339
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public clearMSportTargetTrainingEffect()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    .line 1178
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1179
    return-object p0
.end method

.method public clearMSwimPoolLen()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 1158
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    .line 1159
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1160
    return-object p0
.end method

.method public clearMTodayStepGoal()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    .line 168
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 169
    return-object p0
.end method

.method public clearMUserAge()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 718
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    .line 719
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 720
    return-object p0
.end method

.method public clearMUserBasicCalories()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    .line 795
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 796
    return-object p0
.end method

.method public clearMUserBodyFatRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    .line 852
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 853
    return-object p0
.end method

.method public clearMUserExerciseRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    .line 871
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 872
    return-object p0
.end method

.method public clearMUserHeightMeter()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    .line 738
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 739
    return-object p0
.end method

.method public clearMUserIsLeftHander()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    .line 928
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 929
    return-object p0
.end method

.method public clearMUserIsVeganism()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    .line 890
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 891
    return-object p0
.end method

.method public clearMUserIsWearOnLeft()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    .line 833
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 834
    return-object p0
.end method

.method public clearMUserSex()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    .line 814
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 815
    return-object p0
.end method

.method public clearMUserSkin()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    .line 909
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 910
    return-object p0
.end method

.method public clearMUserStepMeter()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    .line 776
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 777
    return-object p0
.end method

.method public clearMUserWeightKg()Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2

    .prologue
    .line 756
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    .line 757
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 758
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 2138
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 2139
    .local v3, "size":I
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 2140
    const/4 v4, 0x1

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2143
    :cond_0
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 2144
    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2147
    :cond_1
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 2148
    const/4 v4, 0x3

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2151
    :cond_2
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 2152
    const/4 v4, 0x4

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2155
    :cond_3
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 2156
    const/4 v4, 0x5

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2159
    :cond_4
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    .line 2160
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2163
    :cond_5
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 2164
    const/4 v4, 0x7

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2167
    :cond_6
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_7

    .line 2168
    const/16 v4, 0x8

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2171
    :cond_7
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_8

    .line 2172
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2175
    :cond_8
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_9

    .line 2176
    const/16 v4, 0xa

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2179
    :cond_9
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_a

    .line 2180
    const/16 v4, 0xb

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2183
    :cond_a
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_b

    .line 2184
    const/16 v4, 0xc

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2187
    :cond_b
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_c

    .line 2188
    const/16 v4, 0xd

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2191
    :cond_c
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_d

    .line 2192
    const/16 v4, 0xe

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2195
    :cond_d
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_e

    .line 2196
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2199
    :cond_e
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_f

    .line 2200
    const/16 v4, 0x10

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2203
    :cond_f
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_10

    .line 2204
    const/16 v4, 0x11

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2207
    :cond_10
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_11

    .line 2208
    const/16 v4, 0x12

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2211
    :cond_11
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_12

    .line 2212
    const/16 v4, 0x13

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2215
    :cond_12
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v4, v10

    if-eqz v4, :cond_13

    .line 2216
    const/16 v4, 0x14

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2219
    :cond_13
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_14

    .line 2220
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2223
    :cond_14
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 2224
    const/16 v4, 0x16

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2227
    :cond_15
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    .line 2228
    const/16 v4, 0x17

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2231
    :cond_16
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    .line 2232
    const/16 v4, 0x18

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2235
    :cond_17
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_18

    .line 2236
    const/16 v4, 0x19

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2239
    :cond_18
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    .line 2240
    const/16 v4, 0x1a

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2243
    :cond_19
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a

    .line 2244
    const/16 v4, 0x1b

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2247
    :cond_1a
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1b

    .line 2248
    const/16 v4, 0x1c

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2251
    :cond_1b
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1c

    .line 2252
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2255
    :cond_1c
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1d

    .line 2256
    const/16 v4, 0x1e

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2259
    :cond_1d
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_1e

    .line 2260
    const/16 v4, 0x1f

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2263
    :cond_1e
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1f

    .line 2264
    const/16 v4, 0x20

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2267
    :cond_1f
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_20

    .line 2268
    const/16 v4, 0x21

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2271
    :cond_20
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_21

    .line 2272
    const/16 v4, 0x22

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2275
    :cond_21
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_22

    .line 2276
    const/16 v4, 0x23

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2279
    :cond_22
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_23

    .line 2280
    const/16 v4, 0x24

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2283
    :cond_23
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_24

    .line 2284
    const/16 v4, 0x25

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2287
    :cond_24
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_25

    .line 2288
    const/16 v4, 0x26

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2291
    :cond_25
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_26

    .line 2292
    const/16 v4, 0x27

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2295
    :cond_26
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_27

    .line 2296
    const/16 v4, 0x28

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2299
    :cond_27
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_28

    .line 2300
    const/16 v4, 0x29

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2303
    :cond_28
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_29

    .line 2304
    const/16 v4, 0x2a

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2307
    :cond_29
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2a

    .line 2308
    const/16 v4, 0x2b

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2311
    :cond_2a
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v4, v4

    if-lez v4, :cond_2c

    .line 2312
    const/4 v0, 0x0

    .line 2313
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2b

    .line 2314
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    aget v1, v4, v2

    .line 2315
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2318
    .end local v1    # "element":I
    :cond_2b
    add-int/2addr v3, v0

    .line 2319
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 2321
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_2c
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_2d

    .line 2322
    const/16 v4, 0x2d

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2325
    :cond_2d
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_2e

    .line 2326
    const/16 v4, 0x2e

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2329
    :cond_2e
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_2f

    .line 2330
    const/16 v4, 0x2f

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2333
    :cond_2f
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_30

    .line 2334
    const/16 v4, 0x30

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2337
    :cond_30
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_31

    .line 2338
    const/16 v4, 0x31

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2341
    :cond_31
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_32

    .line 2342
    const/16 v4, 0x32

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2345
    :cond_32
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_33

    .line 2346
    const/16 v4, 0x33

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2349
    :cond_33
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_34

    .line 2350
    const/16 v4, 0x34

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2353
    :cond_34
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v4, v10

    if-eqz v4, :cond_35

    .line 2354
    const/16 v4, 0x35

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2357
    :cond_35
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_36

    .line 2358
    const/16 v4, 0x36

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2361
    :cond_36
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_37

    .line 2362
    const/16 v4, 0x37

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2365
    :cond_37
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_38

    .line 2366
    const/16 v4, 0x38

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2369
    :cond_38
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_39

    .line 2370
    const/16 v4, 0x39

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2373
    :cond_39
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3a

    .line 2374
    const/16 v4, 0x3a

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2377
    :cond_3a
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3b

    .line 2378
    const/16 v4, 0x3b

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2381
    :cond_3b
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3c

    .line 2382
    const/16 v4, 0x3c

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2385
    :cond_3c
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3d

    .line 2386
    const/16 v4, 0x3d

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2389
    :cond_3d
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3e

    .line 2390
    const/16 v4, 0x3e

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2393
    :cond_3e
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3f

    .line 2394
    const/16 v4, 0x3f

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2397
    :cond_3f
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_40

    .line 2398
    const/16 v4, 0x40

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2401
    :cond_40
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_41

    .line 2402
    const/16 v4, 0x41

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2405
    :cond_41
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    .line 2406
    const/16 v4, 0x42

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2409
    :cond_42
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_43

    .line 2410
    const/16 v4, 0x43

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2413
    :cond_43
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_44

    .line 2414
    const/16 v4, 0x44

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2417
    :cond_44
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_45

    .line 2418
    const/16 v4, 0x45

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2421
    :cond_45
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_46

    .line 2422
    const/16 v4, 0x46

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 2425
    :cond_46
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_47

    .line 2426
    const/16 v4, 0x47

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2429
    :cond_47
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_48

    .line 2430
    const/16 v4, 0x48

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2433
    :cond_48
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_49

    .line 2434
    const/16 v4, 0x49

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2437
    :cond_49
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4a

    .line 2438
    const/16 v4, 0x4a

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2441
    :cond_4a
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_4b

    .line 2442
    const/16 v4, 0x4b

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2445
    :cond_4b
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_4c

    .line 2446
    const/16 v4, 0x4c

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2449
    :cond_4c
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_4d

    .line 2450
    const/16 v4, 0x4d

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2453
    :cond_4d
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_4e

    .line 2454
    const/16 v4, 0x4e

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2457
    :cond_4e
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_4f

    .line 2458
    const/16 v4, 0x4f

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2461
    :cond_4f
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_50

    .line 2462
    const/16 v4, 0x50

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2465
    :cond_50
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_51

    .line 2466
    const/16 v4, 0x51

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2469
    :cond_51
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_52

    .line 2470
    const/16 v4, 0x52

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2473
    :cond_52
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_53

    .line 2474
    const/16 v4, 0x53

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2477
    :cond_53
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_54

    .line 2478
    const/16 v4, 0x54

    iget-boolean v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2481
    :cond_54
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v4, v10

    if-eqz v4, :cond_55

    .line 2482
    const/16 v4, 0x55

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2485
    :cond_55
    iget v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_56

    .line 2486
    const/16 v4, 0x56

    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2489
    :cond_56
    return v3
.end method

.method public getMASConfirmTimeout()Z
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    return v0
.end method

.method public getMAutoSportStartEnabled()Z
    .locals 1

    .prologue
    .line 1679
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    return v0
.end method

.method public getMAutoSportStopEnabled()Z
    .locals 1

    .prologue
    .line 1698
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    return v0
.end method

.method public getMClearIndoorRun()Z
    .locals 1

    .prologue
    .line 1717
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    return v0
.end method

.method public getMClearWristOnState()Z
    .locals 1

    .prologue
    .line 1603
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    return v0
.end method

.method public getMGpsIntevalSetting()I
    .locals 1

    .prologue
    .line 1755
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    return v0
.end method

.method public getMHRRSection1()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    return v0
.end method

.method public getMHRRSection2()I
    .locals 1

    .prologue
    .line 1356
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    return v0
.end method

.method public getMHRRSection3()I
    .locals 1

    .prologue
    .line 1375
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    return v0
.end method

.method public getMHRRSection4()I
    .locals 1

    .prologue
    .line 1394
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    return v0
.end method

.method public getMHRRSection5()I
    .locals 1

    .prologue
    .line 1413
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    return v0
.end method

.method public getMIs3DDistanceEnabled()Z
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    return v0
.end method

.method public getMIsAlldayAutoHeartRateEnabled()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    return v0
.end method

.method public getMIsFlipEnabled()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    return v0
.end method

.method public getMIsMeasureHrInCrossCountryRun()Z
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    return v0
.end method

.method public getMIsMedalTodayStepGoal1AlertEnabled()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    return v0
.end method

.method public getMIsMedalTodayStepGoal2AlertEnabled()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    return v0
.end method

.method public getMIsMedalTodayStepGoal3AlertEnabled()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    return v0
.end method

.method public getMIsMedalTotalStepGoal1AlertEnabled()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    return v0
.end method

.method public getMIsMedalTotalStepGoal2AlertEnabled()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    return v0
.end method

.method public getMIsMedalTotalStepGoal3AlertEnabled()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    return v0
.end method

.method public getMIsMedalTotalStepGoal4AlertEnabled()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    return v0
.end method

.method public getMIsSREveryXXCountAlertEnabled()Z
    .locals 1

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    return v0
.end method

.method public getMIsSREveryXXTimerAlertEnabled()Z
    .locals 1

    .prologue
    .line 1527
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    return v0
.end method

.method public getMIsSRTargetCountAlertEnabled()Z
    .locals 1

    .prologue
    .line 1584
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    return v0
.end method

.method public getMIsSafeHeartRateAlertEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    return v0
.end method

.method public getMIsSedentaryMinAlertEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    return v0
.end method

.method public getMIsSporKiloMeterAlertEnabled()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportAutoPauseEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    return v0
.end method

.method public getMIsSportFastTargetPaceAlertEnabled()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportHrZoneAlertEnabled()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportLapMeterAlertEnabled()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportTargetCaloriesAlertEnabled()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportTargetDistanceAlertEnabled()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportTargetPaceAlertEnabled()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    return v0
.end method

.method public getMIsSportTargetTimerAlertEnabled()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    return v0
.end method

.method public getMIsTodayStepGoalAlertEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    return v0
.end method

.method public getMIsUseThaWorkoutSet()Z
    .locals 1

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    return v0
.end method

.method public getMIsWearDetectEnabled()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    return v0
.end method

.method public getMManuallySectionRecordt()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    return v0
.end method

.method public getMMaxHeartRate()I
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    return v0
.end method

.method public getMMedalTodayStepGoal1()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    return v0
.end method

.method public getMMedalTodayStepGoal2()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    return v0
.end method

.method public getMMedalTodayStepGoal3()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    return v0
.end method

.method public getMMedalTotalStepGoal1()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    return v0
.end method

.method public getMMedalTotalStepGoal2()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    return v0
.end method

.method public getMMedalTotalStepGoal3()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    return v0
.end method

.method public getMMedalTotalStepGoal4()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    return v0
.end method

.method public getMNavigationModeSetting()I
    .locals 1

    .prologue
    .line 1736
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    return v0
.end method

.method public getMNotDetectStarToday()Z
    .locals 1

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    return v0
.end method

.method public getMNotDetectStopToday()Z
    .locals 1

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    return v0
.end method

.method public getMRabitSpeed()F
    .locals 1

    .prologue
    .line 1451
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    return v0
.end method

.method public getMRestHeartRate()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    return v0
.end method

.method public getMSREveryXXCount()I
    .locals 1

    .prologue
    .line 1470
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    return v0
.end method

.method public getMSREveryXXTimer()I
    .locals 1

    .prologue
    .line 1508
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    return v0
.end method

.method public getMSRGroupNum()I
    .locals 1

    .prologue
    .line 1546
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    return v0
.end method

.method public getMSRTargetCount()I
    .locals 1

    .prologue
    .line 1565
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    return v0
.end method

.method public getMSedentaryMin()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    return v0
.end method

.method public getMSportAutoPauseSpeedTh()F
    .locals 1

    .prologue
    .line 1242
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    return v0
.end method

.method public getMSportCorrectDistance()F
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    return v0
.end method

.method public getMSportFastTargetPace()F
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    return v0
.end method

.method public getMSportHrZoneLower()F
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    return v0
.end method

.method public getMSportHrZoneUpper()F
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    return v0
.end method

.method public getMSportKiloMeter()F
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    return v0
.end method

.method public getMSportLapMeter()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    return v0
.end method

.method public getMSportSafeHeartRate()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    return v0
.end method

.method public getMSportTargetCalories()F
    .locals 1

    .prologue
    .line 1014
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    return v0
.end method

.method public getMSportTargetDistance()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    return v0
.end method

.method public getMSportTargetPace()F
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    return v0
.end method

.method public getMSportTargetTimer()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    return v0
.end method

.method public getMSportTargetTrainingEffect()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    return v0
.end method

.method public getMSwimPoolLen()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    return v0
.end method

.method public getMTodayStepGoal()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    return v0
.end method

.method public getMUserAge()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    return v0
.end method

.method public getMUserBasicCalories()F
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    return v0
.end method

.method public getMUserBodyFatRate()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    return v0
.end method

.method public getMUserExerciseRate()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    return v0
.end method

.method public getMUserHeightMeter()F
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    return v0
.end method

.method public getMUserIsLeftHander()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    return v0
.end method

.method public getMUserIsVeganism()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    return v0
.end method

.method public getMUserIsWearOnLeft()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    return v0
.end method

.method public getMUserSex()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    return v0
.end method

.method public getMUserSkin()I
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    return v0
.end method

.method public getMUserStepMeter()F
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    return v0
.end method

.method public getMUserWeightKg()F
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    return v0
.end method

.method public hasMASConfirmTimeout()Z
    .locals 1

    .prologue
    .line 1630
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMAutoSportStartEnabled()Z
    .locals 2

    .prologue
    .line 1687
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMAutoSportStopEnabled()Z
    .locals 2

    .prologue
    .line 1706
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMClearIndoorRun()Z
    .locals 2

    .prologue
    .line 1725
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMClearWristOnState()Z
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMGpsIntevalSetting()Z
    .locals 2

    .prologue
    .line 1763
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMHRRSection1()Z
    .locals 2

    .prologue
    .line 1345
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMHRRSection2()Z
    .locals 2

    .prologue
    .line 1364
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMHRRSection3()Z
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMHRRSection4()Z
    .locals 1

    .prologue
    .line 1402
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMHRRSection5()Z
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIs3DDistanceEnabled()Z
    .locals 2

    .prologue
    .line 1231
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsAlldayAutoHeartRateEnabled()Z
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsFlipEnabled()Z
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMeasureHrInCrossCountryRun()Z
    .locals 2

    .prologue
    .line 1193
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTodayStepGoal1AlertEnabled()Z
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTodayStepGoal2AlertEnabled()Z
    .locals 2

    .prologue
    .line 506
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTodayStepGoal3AlertEnabled()Z
    .locals 2

    .prologue
    .line 544
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTotalStepGoal1AlertEnabled()Z
    .locals 2

    .prologue
    .line 582
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTotalStepGoal2AlertEnabled()Z
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTotalStepGoal3AlertEnabled()Z
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsMedalTotalStepGoal4AlertEnabled()Z
    .locals 2

    .prologue
    .line 696
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSREveryXXCountAlertEnabled()Z
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSREveryXXTimerAlertEnabled()Z
    .locals 1

    .prologue
    .line 1535
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSRTargetCountAlertEnabled()Z
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSafeHeartRateAlertEnabled()Z
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSedentaryMinAlertEnabled()Z
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSporKiloMeterAlertEnabled()Z
    .locals 2

    .prologue
    .line 1136
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportAutoPauseEnabled()Z
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportFastTargetPaceAlertEnabled()Z
    .locals 2

    .prologue
    .line 1288
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportHrZoneAlertEnabled()Z
    .locals 2

    .prologue
    .line 1098
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportLapMeterAlertEnabled()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportTargetCaloriesAlertEnabled()Z
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportTargetDistanceAlertEnabled()Z
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportTargetPaceAlertEnabled()Z
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsSportTargetTimerAlertEnabled()Z
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsTodayStepGoalAlertEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsUseThaWorkoutSet()Z
    .locals 2

    .prologue
    .line 1212
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMIsWearDetectEnabled()Z
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMManuallySectionRecordt()Z
    .locals 1

    .prologue
    .line 1440
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMaxHeartRate()Z
    .locals 2

    .prologue
    .line 1307
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTodayStepGoal1()Z
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTodayStepGoal2()Z
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTodayStepGoal3()Z
    .locals 2

    .prologue
    .line 525
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTotalStepGoal1()Z
    .locals 2

    .prologue
    .line 563
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTotalStepGoal2()Z
    .locals 2

    .prologue
    .line 601
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTotalStepGoal3()Z
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMedalTotalStepGoal4()Z
    .locals 2

    .prologue
    .line 677
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMNavigationModeSetting()Z
    .locals 2

    .prologue
    .line 1744
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMNotDetectStarToday()Z
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMNotDetectStopToday()Z
    .locals 2

    .prologue
    .line 1668
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMRabitSpeed()Z
    .locals 1

    .prologue
    .line 1459
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMRestHeartRate()Z
    .locals 2

    .prologue
    .line 1326
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSREveryXXCount()Z
    .locals 1

    .prologue
    .line 1478
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSREveryXXTimer()Z
    .locals 1

    .prologue
    .line 1516
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSRGroupNum()Z
    .locals 1

    .prologue
    .line 1554
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSRTargetCount()Z
    .locals 1

    .prologue
    .line 1573
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSedentaryMin()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportAutoPauseSpeedTh()Z
    .locals 2

    .prologue
    .line 1250
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportCorrectDistance()Z
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportFastTargetPace()Z
    .locals 2

    .prologue
    .line 1269
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportHrZoneLower()Z
    .locals 2

    .prologue
    .line 1060
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportHrZoneUpper()Z
    .locals 2

    .prologue
    .line 1079
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportKiloMeter()Z
    .locals 2

    .prologue
    .line 1117
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportLapMeter()Z
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportSafeHeartRate()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportTargetCalories()Z
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportTargetDistance()Z
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportTargetPace()Z
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportTargetTimer()Z
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportTargetTrainingEffect()Z
    .locals 2

    .prologue
    .line 1174
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSwimPoolLen()Z
    .locals 2

    .prologue
    .line 1155
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTodayStepGoal()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserAge()Z
    .locals 2

    .prologue
    .line 715
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserBasicCalories()Z
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserBodyFatRate()Z
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserExerciseRate()Z
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserHeightMeter()Z
    .locals 2

    .prologue
    .line 734
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserIsLeftHander()Z
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserIsVeganism()Z
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserIsWearOnLeft()Z
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserSex()Z
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserSkin()Z
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserStepMeter()Z
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMUserWeightKg()Z
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 2498
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 2502
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2503
    :sswitch_0
    return-object p0

    .line 2508
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    .line 2509
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2513
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    .line 2514
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2518
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    .line 2519
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2523
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    .line 2524
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2528
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    .line 2529
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2533
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    .line 2534
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2538
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    .line 2539
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2543
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    .line 2544
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto :goto_0

    .line 2548
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    .line 2549
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2553
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    .line 2554
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2558
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    .line 2559
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2563
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    .line 2564
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2568
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    .line 2569
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2573
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    .line 2574
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2578
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    .line 2579
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2583
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    .line 2584
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2588
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    .line 2589
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x10000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2593
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    .line 2594
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2598
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    .line 2599
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x40000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2603
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    .line 2604
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2608
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    .line 2609
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2613
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    .line 2614
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2618
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    .line 2619
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2623
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    .line 2624
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x800000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2628
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    .line 2629
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2633
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    .line 2634
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x2000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2638
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    .line 2639
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2643
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    .line 2644
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x8000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2648
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    .line 2649
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2653
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    .line 2654
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2658
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    .line 2659
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2663
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    .line 2664
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v9, -0x80000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    goto/16 :goto_0

    .line 2668
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    .line 2669
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2673
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    .line 2674
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2678
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    .line 2679
    .local v7, "value":I
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 2683
    :pswitch_0
    iput v7, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    .line 2684
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2690
    .end local v7    # "value":I
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    .line 2691
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2695
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    .line 2696
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2700
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    .line 2701
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2705
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    .line 2706
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2710
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    .line 2711
    .restart local v7    # "value":I
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 2716
    :pswitch_1
    iput v7, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    .line 2717
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2723
    .end local v7    # "value":I
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    .line 2724
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2728
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    .line 2729
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2733
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    .line 2734
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2738
    :sswitch_2c
    const/16 v8, 0x160

    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2740
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    if-nez v8, :cond_2

    const/4 v1, 0x0

    .line 2741
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2742
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 2743
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v4, v10, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2745
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 2746
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2747
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2745
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2740
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v1, v8

    goto :goto_1

    .line 2750
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2751
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    goto/16 :goto_0

    .line 2755
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 2756
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2758
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 2759
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 2760
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 2761
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2762
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2764
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2765
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    if-nez v8, :cond_6

    const/4 v1, 0x0

    .line 2766
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2767
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 2768
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v4, v10, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2770
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 2771
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2770
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2765
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v1, v8

    goto :goto_4

    .line 2773
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    .line 2774
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2778
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    .line 2779
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2783
    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    .line 2784
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2788
    :sswitch_30
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    .line 2789
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2793
    :sswitch_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    .line 2794
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2798
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    .line 2799
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2803
    :sswitch_33
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    .line 2804
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x10000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2808
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    .line 2809
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2813
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    .line 2814
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x40000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2818
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    .line 2819
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2823
    :sswitch_37
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    .line 2824
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2828
    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    .line 2829
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2833
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    .line 2834
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2838
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    .line 2839
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x800000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2843
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    .line 2844
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2848
    :sswitch_3c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    .line 2849
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x2000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2853
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    .line 2854
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2858
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    .line 2859
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x8000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2863
    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    .line 2864
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2868
    :sswitch_40
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    .line 2869
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2873
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    .line 2874
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2878
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    .line 2879
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v9, -0x80000000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    goto/16 :goto_0

    .line 2883
    :sswitch_43
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    .line 2884
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2888
    :sswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    .line 2889
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2893
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    .line 2894
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2898
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    .line 2899
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2903
    :sswitch_47
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    .line 2904
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2908
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    .line 2909
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2913
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    .line 2914
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2918
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    .line 2919
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2923
    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    .line 2924
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2928
    :sswitch_4c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    .line 2929
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2933
    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    .line 2934
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2938
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    .line 2939
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2943
    :sswitch_4f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    .line 2944
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2948
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    .line 2949
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2953
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    .line 2954
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2958
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    .line 2959
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2963
    :sswitch_53
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    .line 2964
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v9, 0x10000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2968
    :sswitch_54
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    .line 2969
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2973
    :sswitch_55
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    .line 2974
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v9, 0x40000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2978
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    .line 2979
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2983
    :sswitch_57
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    .line 2984
    iget v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    goto/16 :goto_0

    .line 2498
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x65 -> :sswitch_c
        0x68 -> :sswitch_d
        0x75 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xfd -> :sswitch_1f
        0x105 -> :sswitch_20
        0x10d -> :sswitch_21
        0x115 -> :sswitch_22
        0x118 -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x15d -> :sswitch_2b
        0x160 -> :sswitch_2c
        0x162 -> :sswitch_2d
        0x168 -> :sswitch_2e
        0x170 -> :sswitch_2f
        0x17d -> :sswitch_30
        0x180 -> :sswitch_31
        0x18d -> :sswitch_32
        0x195 -> :sswitch_33
        0x198 -> :sswitch_34
        0x1a5 -> :sswitch_35
        0x1a8 -> :sswitch_36
        0x1b0 -> :sswitch_37
        0x1b8 -> :sswitch_38
        0x1c0 -> :sswitch_39
        0x1c8 -> :sswitch_3a
        0x1d0 -> :sswitch_3b
        0x1dd -> :sswitch_3c
        0x1e5 -> :sswitch_3d
        0x1e8 -> :sswitch_3e
        0x1f0 -> :sswitch_3f
        0x1f8 -> :sswitch_40
        0x200 -> :sswitch_41
        0x208 -> :sswitch_42
        0x210 -> :sswitch_43
        0x218 -> :sswitch_44
        0x220 -> :sswitch_45
        0x228 -> :sswitch_46
        0x235 -> :sswitch_47
        0x238 -> :sswitch_48
        0x240 -> :sswitch_49
        0x248 -> :sswitch_4a
        0x250 -> :sswitch_4b
        0x258 -> :sswitch_4c
        0x260 -> :sswitch_4d
        0x268 -> :sswitch_4e
        0x270 -> :sswitch_4f
        0x278 -> :sswitch_50
        0x280 -> :sswitch_51
        0x288 -> :sswitch_52
        0x290 -> :sswitch_53
        0x298 -> :sswitch_54
        0x2a0 -> :sswitch_55
        0x2a8 -> :sswitch_56
        0x2b0 -> :sswitch_57
    .end sparse-switch

    .line 2679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2711
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setMASConfirmTimeout(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1625
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    .line 1626
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1627
    return-object p0
.end method

.method public setMAutoSportStartEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1682
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    .line 1683
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1684
    return-object p0
.end method

.method public setMAutoSportStopEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1701
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    .line 1702
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1703
    return-object p0
.end method

.method public setMClearIndoorRun(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1720
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    .line 1721
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1722
    return-object p0
.end method

.method public setMClearWristOnState(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1606
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    .line 1607
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1608
    return-object p0
.end method

.method public setMGpsIntevalSetting(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1758
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    .line 1759
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1760
    return-object p0
.end method

.method public setMHRRSection1(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1340
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    .line 1341
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1342
    return-object p0
.end method

.method public setMHRRSection2(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1359
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    .line 1360
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1361
    return-object p0
.end method

.method public setMHRRSection3(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1378
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    .line 1379
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1380
    return-object p0
.end method

.method public setMHRRSection4(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1397
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    .line 1398
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1399
    return-object p0
.end method

.method public setMHRRSection5(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1416
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    .line 1417
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1418
    return-object p0
.end method

.method public setMIs3DDistanceEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1226
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    .line 1227
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1228
    return-object p0
.end method

.method public setMIsAlldayAutoHeartRateEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 938
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    .line 939
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 940
    return-object p0
.end method

.method public setMIsFlipEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 979
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    .line 980
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 981
    return-object p0
.end method

.method public setMIsMeasureHrInCrossCountryRun(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1188
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    .line 1189
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1190
    return-object p0
.end method

.method public setMIsMedalTodayStepGoal1AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    .line 464
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 465
    return-object p0
.end method

.method public setMIsMedalTodayStepGoal2AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    .line 502
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 503
    return-object p0
.end method

.method public setMIsMedalTodayStepGoal3AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    .line 540
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 541
    return-object p0
.end method

.method public setMIsMedalTotalStepGoal1AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    .line 578
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 579
    return-object p0
.end method

.method public setMIsMedalTotalStepGoal2AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    .line 616
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 617
    return-object p0
.end method

.method public setMIsMedalTotalStepGoal3AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    .line 654
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 655
    return-object p0
.end method

.method public setMIsMedalTotalStepGoal4AlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    .line 692
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 693
    return-object p0
.end method

.method public setMIsSREveryXXCountAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1492
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    .line 1493
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1494
    return-object p0
.end method

.method public setMIsSREveryXXTimerAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1530
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    .line 1531
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1532
    return-object p0
.end method

.method public setMIsSRTargetCountAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1587
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    .line 1588
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1589
    return-object p0
.end method

.method public setMIsSafeHeartRateAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    .line 293
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 294
    return-object p0
.end method

.method public setMIsSedentaryMinAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    .line 217
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 218
    return-object p0
.end method

.method public setMIsSporKiloMeterAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1131
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    .line 1132
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1133
    return-object p0
.end method

.method public setMIsSportAutoPauseEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    .line 312
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public setMIsSportFastTargetPaceAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1283
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    .line 1284
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1285
    return-object p0
.end method

.method public setMIsSportHrZoneAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1093
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    .line 1094
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1095
    return-object p0
.end method

.method public setMIsSportLapMeterAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    .line 255
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 256
    return-object p0
.end method

.method public setMIsSportTargetCaloriesAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1036
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    .line 1037
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1038
    return-object p0
.end method

.method public setMIsSportTargetDistanceAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    .line 388
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public setMIsSportTargetPaceAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    .line 426
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 427
    return-object p0
.end method

.method public setMIsSportTargetTimerAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    .line 350
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 351
    return-object p0
.end method

.method public setMIsTodayStepGoalAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    .line 179
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 180
    return-object p0
.end method

.method public setMIsUseThaWorkoutSet(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1207
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    .line 1208
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1209
    return-object p0
.end method

.method public setMIsWearDetectEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 998
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    .line 999
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1000
    return-object p0
.end method

.method public setMManuallySectionRecordt(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1435
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    .line 1436
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1437
    return-object p0
.end method

.method public setMMaxHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1302
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    .line 1303
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1304
    return-object p0
.end method

.method public setMMedalTodayStepGoal1(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    .line 445
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 446
    return-object p0
.end method

.method public setMMedalTodayStepGoal2(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    .line 483
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 484
    return-object p0
.end method

.method public setMMedalTodayStepGoal3(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 520
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    .line 521
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 522
    return-object p0
.end method

.method public setMMedalTotalStepGoal1(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    .line 559
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 560
    return-object p0
.end method

.method public setMMedalTotalStepGoal2(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    .line 597
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 598
    return-object p0
.end method

.method public setMMedalTotalStepGoal3(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 634
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    .line 635
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 636
    return-object p0
.end method

.method public setMMedalTotalStepGoal4(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 672
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    .line 673
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 674
    return-object p0
.end method

.method public setMNavigationModeSetting(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1739
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    .line 1740
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1741
    return-object p0
.end method

.method public setMNotDetectStarToday(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1644
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    .line 1645
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1646
    return-object p0
.end method

.method public setMNotDetectStopToday(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1663
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    .line 1664
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1665
    return-object p0
.end method

.method public setMRabitSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1454
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    .line 1455
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1456
    return-object p0
.end method

.method public setMRestHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1321
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    .line 1322
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1323
    return-object p0
.end method

.method public setMSREveryXXCount(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1473
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    .line 1474
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1475
    return-object p0
.end method

.method public setMSREveryXXTimer(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1511
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    .line 1512
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1513
    return-object p0
.end method

.method public setMSRGroupNum(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1549
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    .line 1550
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1551
    return-object p0
.end method

.method public setMSRTargetCount(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1568
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    .line 1569
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    .line 1570
    return-object p0
.end method

.method public setMSedentaryMin(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    .line 198
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 199
    return-object p0
.end method

.method public setMSportAutoPauseSpeedTh(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1245
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    .line 1246
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1247
    return-object p0
.end method

.method public setMSportCorrectDistance(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 957
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    .line 958
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 959
    return-object p0
.end method

.method public setMSportFastTargetPace(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1264
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    .line 1265
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1266
    return-object p0
.end method

.method public setMSportHrZoneLower(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1055
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    .line 1056
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1057
    return-object p0
.end method

.method public setMSportHrZoneUpper(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1074
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    .line 1075
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1076
    return-object p0
.end method

.method public setMSportKiloMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 1112
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    .line 1113
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1114
    return-object p0
.end method

.method public setMSportLapMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 235
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    .line 236
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 237
    return-object p0
.end method

.method public setMSportSafeHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    .line 274
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 275
    return-object p0
.end method

.method public setMSportTargetCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1017
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    .line 1018
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1019
    return-object p0
.end method

.method public setMSportTargetDistance(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 368
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    .line 369
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 370
    return-object p0
.end method

.method public setMSportTargetPace(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 406
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    .line 407
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 408
    return-object p0
.end method

.method public setMSportTargetTimer(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 330
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    .line 331
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public setMSportTargetTrainingEffect(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1169
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    .line 1170
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1171
    return-object p0
.end method

.method public setMSwimPoolLen(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1150
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    .line 1151
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 1152
    return-object p0
.end method

.method public setMTodayStepGoal(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    .line 160
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 161
    return-object p0
.end method

.method public setMUserAge(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 710
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    .line 711
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 712
    return-object p0
.end method

.method public setMUserBasicCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 786
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    .line 787
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 788
    return-object p0
.end method

.method public setMUserBodyFatRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 843
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    .line 844
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 845
    return-object p0
.end method

.method public setMUserExerciseRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 862
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    .line 863
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 864
    return-object p0
.end method

.method public setMUserHeightMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 729
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    .line 730
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 731
    return-object p0
.end method

.method public setMUserIsLeftHander(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 919
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    .line 920
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 921
    return-object p0
.end method

.method public setMUserIsVeganism(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    .line 882
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 883
    return-object p0
.end method

.method public setMUserIsWearOnLeft(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    .line 825
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 826
    return-object p0
.end method

.method public setMUserSex(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    .line 806
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 807
    return-object p0
.end method

.method public setMUserSkin(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 900
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    .line 901
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 902
    return-object p0
.end method

.method public setMUserStepMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 767
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    .line 768
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    .line 769
    return-object p0
.end method

.method public setMUserWeightKg(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 748
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    .line 749
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    .line 750
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x80000

    const/high16 v6, 0x40000

    const/high16 v5, 0x20000

    const/high16 v4, 0x10000

    const v3, 0x8000

    .line 1873
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1874
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mTodayStepGoal_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1876
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1877
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsTodayStepGoalAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1879
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1880
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSedentaryMin_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1882
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1883
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSedentaryMinAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1885
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1886
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportLapMeter_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1888
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1889
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportLapMeterAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1891
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1892
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportSafeHeartRate_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1894
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1895
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSafeHeartRateAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1897
    :cond_7
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1898
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportAutoPauseEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1900
    :cond_8
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 1901
    const/16 v1, 0xa

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTimer_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1903
    :cond_9
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 1904
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetTimerAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1906
    :cond_a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 1907
    const/16 v1, 0xc

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetDistance_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1909
    :cond_b
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 1910
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetDistanceAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1912
    :cond_c
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 1913
    const/16 v1, 0xe

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetPace_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1915
    :cond_d
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 1916
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetPaceAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1918
    :cond_e
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    .line 1919
    const/16 v1, 0x10

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal1_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1921
    :cond_f
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_10

    .line 1922
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal1AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1924
    :cond_10
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_11

    .line 1925
    const/16 v1, 0x12

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal2_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1927
    :cond_11
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_12

    .line 1928
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal2AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1930
    :cond_12
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_13

    .line 1931
    const/16 v1, 0x14

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTodayStepGoal3_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1933
    :cond_13
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 1934
    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTodayStepGoal3AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1936
    :cond_14
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    .line 1937
    const/16 v1, 0x16

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal1_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1939
    :cond_15
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 1940
    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal1AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1942
    :cond_16
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    .line 1943
    const/16 v1, 0x18

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal2_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1945
    :cond_17
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    .line 1946
    const/16 v1, 0x19

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal2AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1948
    :cond_18
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    .line 1949
    const/16 v1, 0x1a

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal3_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1951
    :cond_19
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1a

    .line 1952
    const/16 v1, 0x1b

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal3AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1954
    :cond_1a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    .line 1955
    const/16 v1, 0x1c

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMedalTotalStepGoal4_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1957
    :cond_1b
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 1958
    const/16 v1, 0x1d

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMedalTotalStepGoal4AlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1960
    :cond_1c
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1d

    .line 1961
    const/16 v1, 0x1e

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserAge_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1963
    :cond_1d
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_1e

    .line 1964
    const/16 v1, 0x1f

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserHeightMeter_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1966
    :cond_1e
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField0_:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    .line 1967
    const/16 v1, 0x20

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserWeightKg_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1969
    :cond_1f
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    .line 1970
    const/16 v1, 0x21

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserStepMeter_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1972
    :cond_20
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_21

    .line 1973
    const/16 v1, 0x22

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBasicCalories_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1975
    :cond_21
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_22

    .line 1976
    const/16 v1, 0x23

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSex_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1978
    :cond_22
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_23

    .line 1979
    const/16 v1, 0x24

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsWearOnLeft_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1981
    :cond_23
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_24

    .line 1982
    const/16 v1, 0x25

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserBodyFatRate_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1984
    :cond_24
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_25

    .line 1985
    const/16 v1, 0x26

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserExerciseRate_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1987
    :cond_25
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_26

    .line 1988
    const/16 v1, 0x27

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsVeganism_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1990
    :cond_26
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_27

    .line 1991
    const/16 v1, 0x28

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserSkin_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1993
    :cond_27
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_28

    .line 1994
    const/16 v1, 0x29

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mUserIsLeftHander_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1996
    :cond_28
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_29

    .line 1997
    const/16 v1, 0x2a

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsAlldayAutoHeartRateEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1999
    :cond_29
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2a

    .line 2000
    const/16 v1, 0x2b

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportCorrectDistance_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2002
    :cond_2a
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v1, v1

    if-lez v1, :cond_2b

    .line 2003
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    .line 2004
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2007
    .end local v0    # "i":I
    :cond_2b
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_2c

    .line 2008
    const/16 v1, 0x2d

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsFlipEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2010
    :cond_2c
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2d

    .line 2011
    const/16 v1, 0x2e

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsWearDetectEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2013
    :cond_2d
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_2e

    .line 2014
    const/16 v1, 0x2f

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetCalories_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2016
    :cond_2e
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2f

    .line 2017
    const/16 v1, 0x30

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportTargetCaloriesAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2019
    :cond_2f
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_30

    .line 2020
    const/16 v1, 0x31

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneLower_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2022
    :cond_30
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_31

    .line 2023
    const/16 v1, 0x32

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportHrZoneUpper_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2025
    :cond_31
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_32

    .line 2026
    const/16 v1, 0x33

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportHrZoneAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2028
    :cond_32
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_33

    .line 2029
    const/16 v1, 0x34

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportKiloMeter_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2031
    :cond_33
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_34

    .line 2032
    const/16 v1, 0x35

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSporKiloMeterAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2034
    :cond_34
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_35

    .line 2035
    const/16 v1, 0x36

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSwimPoolLen_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2037
    :cond_35
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_36

    .line 2038
    const/16 v1, 0x37

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportTargetTrainingEffect_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2040
    :cond_36
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_37

    .line 2041
    const/16 v1, 0x38

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsMeasureHrInCrossCountryRun_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2043
    :cond_37
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_38

    .line 2044
    const/16 v1, 0x39

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsUseThaWorkoutSet_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2046
    :cond_38
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_39

    .line 2047
    const/16 v1, 0x3a

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIs3DDistanceEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2049
    :cond_39
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3a

    .line 2050
    const/16 v1, 0x3b

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportAutoPauseSpeedTh_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2052
    :cond_3a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3b

    .line 2053
    const/16 v1, 0x3c

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSportFastTargetPace_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2055
    :cond_3b
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3c

    .line 2056
    const/16 v1, 0x3d

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSportFastTargetPaceAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2058
    :cond_3c
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3d

    .line 2059
    const/16 v1, 0x3e

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mMaxHeartRate_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2061
    :cond_3d
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3e

    .line 2062
    const/16 v1, 0x3f

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRestHeartRate_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2064
    :cond_3e
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_3f

    .line 2065
    const/16 v1, 0x40

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection1_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2067
    :cond_3f
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField1_:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_40

    .line 2068
    const/16 v1, 0x41

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection2_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2070
    :cond_40
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_41

    .line 2071
    const/16 v1, 0x42

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection3_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2073
    :cond_41
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_42

    .line 2074
    const/16 v1, 0x43

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection4_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2076
    :cond_42
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_43

    .line 2077
    const/16 v1, 0x44

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mHRRSection5_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2079
    :cond_43
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_44

    .line 2080
    const/16 v1, 0x45

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mManuallySectionRecordt_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2082
    :cond_44
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_45

    .line 2083
    const/16 v1, 0x46

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mRabitSpeed_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2085
    :cond_45
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_46

    .line 2086
    const/16 v1, 0x47

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2088
    :cond_46
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_47

    .line 2089
    const/16 v1, 0x48

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXCountAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2091
    :cond_47
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_48

    .line 2092
    const/16 v1, 0x49

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSREveryXXTimer_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2094
    :cond_48
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_49

    .line 2095
    const/16 v1, 0x4a

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSREveryXXTimerAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2097
    :cond_49
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4a

    .line 2098
    const/16 v1, 0x4b

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRGroupNum_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2100
    :cond_4a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_4b

    .line 2101
    const/16 v1, 0x4c

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mSRTargetCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2103
    :cond_4b
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4c

    .line 2104
    const/16 v1, 0x4d

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mIsSRTargetCountAlertEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2106
    :cond_4c
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_4d

    .line 2107
    const/16 v1, 0x4e

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearWristOnState_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2109
    :cond_4d
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4e

    .line 2110
    const/16 v1, 0x4f

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mASConfirmTimeout_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2112
    :cond_4e
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_4f

    .line 2113
    const/16 v1, 0x50

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStarToday_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2115
    :cond_4f
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_50

    .line 2116
    const/16 v1, 0x51

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNotDetectStopToday_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2118
    :cond_50
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_51

    .line 2119
    const/16 v1, 0x52

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStartEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2121
    :cond_51
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_52

    .line 2122
    const/16 v1, 0x53

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mAutoSportStopEnabled_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2124
    :cond_52
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_53

    .line 2125
    const/16 v1, 0x54

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mClearIndoorRun_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2127
    :cond_53
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_54

    .line 2128
    const/16 v1, 0x55

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mNavigationModeSetting_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2130
    :cond_54
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->bitField2_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_55

    .line 2131
    const/16 v1, 0x56

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mGpsIntevalSetting_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2133
    :cond_55
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2134
    return-void
.end method
