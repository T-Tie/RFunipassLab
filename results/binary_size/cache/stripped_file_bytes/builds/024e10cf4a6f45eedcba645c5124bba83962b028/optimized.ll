; ModuleID = '<stdin>'
source_filename = "/tmp/tmputab8_y_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %word = alloca [600 x i8], align 16
  %gram = alloca [600 x [10 x i8]], align 16
  %temp = alloca [600 x [10 x i8]], align 16
  %cnt = alloca [600 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 600, ptr nonnull %word) #7
  call void @llvm.lifetime.start.p0(i64 6000, ptr nonnull %gram) #7
  call void @llvm.lifetime.start.p0(i64 6000, ptr nonnull %temp) #7
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %cnt) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %word, i64 noundef 600)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 600
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  %conv = trunc i64 %call4 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %1 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %2 = add i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.end22
  %indvars.iv86 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next87, %for.end22 ]
  %exitcond97 = icmp eq i64 %indvars.iv86, %wide.trip.count
  br i1 %exitcond97, label %for.cond30, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond5
  %3 = add nsw i64 %indvars.iv86, %1
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body12
  %indvars.iv90 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next91, %for.body12 ]
  %indvars.iv88 = phi i64 [ %indvars.iv86, %for.cond8.preheader ], [ %indvars.iv.next89, %for.body12 ]
  %cmp11.not.not = icmp slt i64 %indvars.iv88, %3
  br i1 %cmp11.not.not, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond8
  %arrayidx14 = getelementptr inbounds nuw [600 x i8], ptr %word, i64 0, i64 %indvars.iv88
  %4 = load i8, ptr %arrayidx14, align 1, !tbaa !12
  %arrayidx18 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv86, i64 %indvars.iv90
  store i8 %4, ptr %arrayidx18, align 1, !tbaa !12
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond8, !llvm.loop !13

for.end22:                                        ; preds = %for.cond8
  %idxprom25 = and i64 %indvars.iv90, 4294967295
  %arrayidx26 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv86, i64 %idxprom25
  store i8 0, ptr %arrayidx26, align 1, !tbaa !12
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond5, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond5, %for.body34
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body34 ], [ 0, %for.cond5 ]
  %exitcond102 = icmp eq i64 %indvars.iv98, %wide.trip.count
  br i1 %exitcond102, label %for.cond45.preheader, label %for.body34

for.cond45.preheader:                             ; preds = %for.cond30
  %5 = add i32 %conv, 1
  %6 = sub i32 %5, %0
  %wide.trip.count106 = zext i32 %6 to i64
  br label %for.cond45

for.body34:                                       ; preds = %for.cond30
  %arrayidx36 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %temp, i64 0, i64 %indvars.iv98
  %arrayidx39 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv98
  %call41 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull dereferenceable(1) %arrayidx39) #7
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond30, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc69
  %indvars.iv108 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next109, %for.inc69 ]
  %exitcond112 = icmp eq i64 %indvars.iv108, %wide.trip.count
  br i1 %exitcond112, label %for.cond72, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond45
  %arrayidx56 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv108
  %arrayidx64 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv108
  br label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %for.inc66
  %indvars.iv103 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next104, %for.inc66 ]
  %exitcond107 = icmp eq i64 %indvars.iv103, %wide.trip.count106
  br i1 %exitcond107, label %for.inc69, label %for.body54

for.body54:                                       ; preds = %for.cond50
  %arrayidx59 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %temp, i64 0, i64 %indvars.iv103
  %call61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx56, ptr noundef nonnull dereferenceable(1) %arrayidx59) #8
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then, label %for.inc66

if.then:                                          ; preds = %for.body54
  %7 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %inc65 = add nsw i32 %7, 1
  store i32 %inc65, ptr %arrayidx64, align 4, !tbaa !5
  br label %for.inc66

for.inc66:                                        ; preds = %for.body54, %if.then
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond50, !llvm.loop !16

for.inc69:                                        ; preds = %for.cond50
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond45, !llvm.loop !17

for.cond72:                                       ; preds = %for.cond45, %for.body76
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.body76 ], [ 0, %for.cond45 ]
  %max.0 = phi i32 [ %spec.select, %for.body76 ], [ 1, %for.cond45 ]
  %exitcond117 = icmp eq i64 %indvars.iv113, %wide.trip.count
  br i1 %exitcond117, label %for.end86, label %for.body76

for.body76:                                       ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv113
  %8 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %8, i32 %max.0)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond72, !llvm.loop !18

for.end86:                                        ; preds = %for.cond72
  %cmp87 = icmp sgt i32 %max.0, 1
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %call89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i = load ptr, ptr %call89, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call89, i64 %vbase.offset.i
  %call.i60 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call89, i8 noundef signext %call.i60)
  %call.i.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i61)
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc139, %if.then88
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc139 ], [ 0, %if.then88 ]
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %sub92 = sub nsw i32 %conv, %9
  %10 = sext i32 %sub92 to i64
  %cmp94.not = icmp sgt i64 %indvars.iv123, %10
  br i1 %cmp94.not, label %if.end144, label %for.body95

for.body95:                                       ; preds = %for.cond91
  %arrayidx97 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv123
  %11 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %11, %max.0
  %cmp99 = icmp eq i64 %indvars.iv123, 0
  %or.cond = and i1 %cmp99, %cmp98
  br i1 %or.cond, label %if.end106.thread, label %if.end106

if.end106.thread:                                 ; preds = %for.body95
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %gram) #7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %gram, i64 noundef %call.i.i)
  %vtable.i63 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i64 = getelementptr i8, ptr %vtable.i63, i64 -24
  %vbase.offset.i65 = load i64, ptr %vbase.offset.ptr.i64, align 8
  %add.ptr.i66 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i65
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i66, i8 noundef signext 10)
  %call1.i67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i67)
  br label %for.inc139

if.end106:                                        ; preds = %for.body95
  %cmp111 = icmp ne i64 %indvars.iv123, 0
  %or.cond1 = and i1 %cmp111, %cmp98
  br i1 %or.cond1, label %for.cond113.preheader, label %for.inc139

for.cond113.preheader:                            ; preds = %if.end106
  %arrayidx117 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv123
  %12 = add nuw nsw i64 %indvars.iv123, 4294967295
  %13 = and i64 %12, 4294967295
  br label %for.cond113

for.cond113:                                      ; preds = %for.cond113.preheader, %for.inc135
  %indvars.iv118 = phi i64 [ 0, %for.cond113.preheader ], [ %indvars.iv.next119, %for.inc135 ]
  %exitcond122.not = icmp eq i64 %indvars.iv118, %indvars.iv123
  br i1 %exitcond122.not, label %for.inc139, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %arrayidx120 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv118
  %call122 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx117, ptr noundef nonnull dereferenceable(1) %arrayidx120) #8
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %for.inc139, label %if.end125

if.end125:                                        ; preds = %for.body115
  %cmp127 = icmp eq i64 %indvars.iv118, %13
  br i1 %cmp127, label %if.then128, label %for.inc135

if.then128:                                       ; preds = %if.end125
  %call.i.i54 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx117) #7
  %call1.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx117, i64 noundef %call.i.i54)
  %vtable.i69 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i70 = getelementptr i8, ptr %vtable.i69, i64 -24
  %vbase.offset.i71 = load i64, ptr %vbase.offset.ptr.i70, align 8
  %add.ptr.i72 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i71
  %call.i73 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i72, i8 noundef signext 10)
  %call1.i74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i73)
  %call.i.i75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i74)
  br label %for.inc135

for.inc135:                                       ; preds = %if.end125, %if.then128
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond113, !llvm.loop !21

for.inc139:                                       ; preds = %for.body115, %for.cond113, %if.end106.thread, %if.end106
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond91, !llvm.loop !22

if.else:                                          ; preds = %for.end86
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i76 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i77 = getelementptr i8, ptr %vtable.i76, i64 -24
  %vbase.offset.i78 = load i64, ptr %vbase.offset.ptr.i77, align 8
  %add.ptr.i79 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i78
  %call.i80 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i79, i8 noundef signext 10)
  %call1.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i80)
  %call.i.i82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i81)
  br label %if.end144

if.end144:                                        ; preds = %for.cond91, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %cnt) #7
  call void @llvm.lifetime.end.p0(i64 6000, ptr nonnull %temp) #7
  call void @llvm.lifetime.end.p0(i64 6000, ptr nonnull %gram) #7
  call void @llvm.lifetime.end.p0(i64 600, ptr nonnull %word) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
