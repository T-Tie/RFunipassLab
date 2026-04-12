; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_mmoa9rj.cpp"
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
  %a = alloca [550 x i8], align 16
  %n = alloca i32, align 4
  %b = alloca [550 x [6 x i8]], align 16
  %num = alloca [550 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 550, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 550)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %conv = trunc i64 %call4 to i32
  call void @llvm.lifetime.start.p0(i64 3300, ptr nonnull %b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3300) %b, i8 0, i64 3300, i1 false)
  call void @llvm.lifetime.start.p0(i64 2200, ptr nonnull %num) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2200) %num, i8 0, i64 2200, i1 false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax45 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %1 = add i32 %smax45, 1
  %wide.trip.count46 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.end ], [ 0, %entry ]
  %exitcond47 = icmp eq i64 %indvars.iv42, %wide.trip.count46
  br i1 %exitcond47, label %for.cond21.preheader, label %for.cond6

for.cond21.preheader:                             ; preds = %for.cond
  %smax56 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count57 = zext nneg i32 %smax56 to i64
  br label %for.cond21

for.cond6:                                        ; preds = %for.cond, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv42
  %arrayidx = getelementptr inbounds nuw [550 x i8], ptr %a, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx12 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv42, i64 %indvars.iv
  store i8 %3, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !10

for.end:                                          ; preds = %for.cond6
  %arrayidx16 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv42, i64 %wide.trip.count
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond, !llvm.loop !13

for.cond21.loopexit:                              ; preds = %for.cond28
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond21, !llvm.loop !14

for.cond21:                                       ; preds = %for.cond21.loopexit, %for.cond21.preheader
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.cond21.loopexit ], [ 0, %for.cond21.preheader ]
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond21.loopexit ], [ 1, %for.cond21.preheader ]
  %exitcond58.not = icmp eq i64 %indvars.iv53, %wide.trip.count57
  br i1 %exitcond58.not, label %for.cond51, label %for.body25

for.body25:                                       ; preds = %for.cond21
  %arrayidx34 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv53
  %arrayidx42 = getelementptr inbounds nuw [550 x i32], ptr %num, i64 0, i64 %indvars.iv53
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.body25
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc44 ], [ %indvars.iv48, %for.body25 ]
  %4 = trunc nuw i64 %indvars.iv50 to i32
  %cmp30.not = icmp slt i32 %sub, %4
  br i1 %cmp30.not, label %for.cond21.loopexit, label %for.body32

for.body32:                                       ; preds = %for.cond28
  %arrayidx37 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv50
  %call39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx34, ptr noundef nonnull dereferenceable(1) %arrayidx37) #8
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then, label %for.inc44

if.then:                                          ; preds = %for.body32
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %inc43 = add nsw i32 %5, 1
  store i32 %inc43, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body32, %if.then
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond28, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond21, %for.body55
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body55 ], [ 0, %for.cond21 ]
  %max.0 = phi i32 [ %spec.select, %for.body55 ], [ 0, %for.cond21 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count57
  br i1 %exitcond63.not, label %for.cond.cleanup54, label %for.body55

for.cond.cleanup54:                               ; preds = %for.cond51
  %cmp66 = icmp eq i32 %max.0, 0
  br i1 %cmp66, label %if.then67, label %if.else

for.body55:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [550 x i32], ptr %num, i64 0, i64 %indvars.iv59
  %6 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %6)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond51, !llvm.loop !16

if.then67:                                        ; preds = %for.cond.cleanup54
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end91

if.else:                                          ; preds = %for.cond.cleanup54
  %add69 = add nuw nsw i32 %max.0, 1
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add69)
  %vtable.i = load ptr, ptr %call70, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call70, i64 %vbase.offset.i
  %call.i31 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call70, i8 noundef signext %call.i31)
  %call.i.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i32)
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc88, %if.else
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.inc88 ], [ 0, %if.else ]
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub74 = sub nsw i32 %conv, %7
  %8 = sext i32 %sub74 to i64
  %cmp75 = icmp slt i64 %indvars.iv64, %8
  br i1 %cmp75, label %for.body77, label %if.end91

for.body77:                                       ; preds = %for.cond73
  %arrayidx79 = getelementptr inbounds nuw [550 x i32], ptr %num, i64 0, i64 %indvars.iv64
  %9 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %9, %max.0
  br i1 %cmp80, label %if.then81, label %for.inc88

if.then81:                                        ; preds = %for.body77
  %arrayidx83 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv64
  %call.i.i28 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx83) #7
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx83, i64 noundef %call.i.i28)
  %vtable.i34 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i35 = getelementptr i8, ptr %vtable.i34, i64 -24
  %vbase.offset.i36 = load i64, ptr %vbase.offset.ptr.i35, align 8
  %add.ptr.i37 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i36
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i37, i8 noundef signext 10)
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i38)
  br label %for.inc88

for.inc88:                                        ; preds = %for.body77, %if.then81
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond73, !llvm.loop !19

if.end91:                                         ; preds = %for.cond73, %if.then67
  call void @llvm.lifetime.end.p0(i64 2200, ptr nonnull %num) #7
  call void @llvm.lifetime.end.p0(i64 3300, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 550, ptr nonnull %a) #7
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = distinct !{!19, !11, !12}
