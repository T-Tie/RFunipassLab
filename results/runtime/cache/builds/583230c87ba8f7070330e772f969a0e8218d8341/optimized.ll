; ModuleID = '<stdin>'
source_filename = "/tmp/tmpboonouuq.cpp"
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
  %words = alloca [501 x i8], align 16
  %cm = alloca [500 x [5 x i8]], align 16
  %n = alloca i32, align 4
  %count = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %words) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(501) %words, i8 0, i64 501, i1 false)
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %cm) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2500) %cm, i8 0, i64 2500, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %words, i64 noundef 500, i8 noundef signext 10)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %words) #8
  %conv = trunc i64 %call4 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax63 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %1 = add i32 %smax63, 1
  %wide.trip.count64 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %while.end ], [ 0, %entry ]
  %exitcond65 = icmp eq i64 %indvars.iv55, %wide.trip.count64
  br i1 %exitcond65, label %for.end, label %while.cond

while.cond:                                       ; preds = %for.cond, %while.body
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %while.body ], [ %indvars.iv55, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %words, i64 0, i64 %indvars.iv57
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx10 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %cm, i64 0, i64 %indvars.iv55, i64 %indvars.iv
  store i8 %2, ptr %arrayidx10, align 1, !tbaa !9
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %arrayidx14 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %cm, i64 0, i64 %indvars.iv55, i64 %wide.trip.count
  store i8 0, ptr %arrayidx14, align 1, !tbaa !9
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %count) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %count, i8 0, i64 2000, i1 false)
  %3 = add i32 %conv, 1
  %4 = sub i32 %3, %0
  %wide.trip.count76 = zext i32 %4 to i64
  %wide.trip.count69 = zext nneg i32 %smax to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc50, %for.end
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc50 ], [ 0, %for.end ]
  %exitcond80 = icmp eq i64 %indvars.iv71, %wide.trip.count64
  br i1 %exitcond80, label %for.end52, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond16
  %arrayidx44 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv71
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %if.end46
  %indvars.iv73 = phi i64 [ %indvars.iv71, %for.cond20.preheader ], [ %indvars.iv.next74, %if.end46 ]
  %exitcond77 = icmp eq i64 %indvars.iv73, %wide.trip.count76
  br i1 %exitcond77, label %for.inc50, label %for.cond24

for.cond24:                                       ; preds = %for.cond20, %for.body26
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body26 ], [ 0, %for.cond20 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count69
  br i1 %exitcond70.not, label %if.then42, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %arrayidx30 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %cm, i64 0, i64 %indvars.iv71, i64 %indvars.iv66
  %5 = load i8, ptr %arrayidx30, align 1, !tbaa !9
  %arrayidx35 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %cm, i64 0, i64 %indvars.iv73, i64 %indvars.iv66
  %6 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  %cmp37.not = icmp eq i8 %5, %6
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br i1 %cmp37.not, label %for.cond24, label %if.end46, !llvm.loop !14

if.then42:                                        ; preds = %for.cond24
  %7 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %inc45 = add nsw i32 %7, 1
  store i32 %inc45, ptr %arrayidx44, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %for.body26, %if.then42
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond20, !llvm.loop !15

for.inc50:                                        ; preds = %for.cond20
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond16, !llvm.loop !16

for.end52:                                        ; preds = %for.cond16
  %8 = load i32, ptr %count, align 16, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.body57, %for.end52
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.body57 ], [ 0, %for.end52 ]
  %max.0 = phi i32 [ %spec.select, %for.body57 ], [ %8, %for.end52 ]
  %exitcond85 = icmp eq i64 %indvars.iv81, %wide.trip.count64
  br i1 %exitcond85, label %for.end67, label %for.body57

for.body57:                                       ; preds = %for.cond54
  %arrayidx59 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv81
  %9 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %9)
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond54, !llvm.loop !17

for.end67:                                        ; preds = %for.cond54
  %cmp68 = icmp eq i32 %max.0, 1
  br i1 %cmp68, label %if.then69, label %if.else

if.then69:                                        ; preds = %for.end67
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i39 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i39)
  %call.i.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i40)
  br label %if.end94

if.else:                                          ; preds = %for.end67
  %cmp72 = icmp sgt i32 %max.0, 1
  br i1 %cmp72, label %if.then73, label %if.end94

if.then73:                                        ; preds = %if.else
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i42 = load ptr, ptr %call74, align 8, !tbaa !18
  %vbase.offset.ptr.i43 = getelementptr i8, ptr %vtable.i42, i64 -24
  %vbase.offset.i44 = load i64, ptr %vbase.offset.ptr.i43, align 8
  %add.ptr.i45 = getelementptr inbounds i8, ptr %call74, i64 %vbase.offset.i44
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i45, i8 noundef signext 10)
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call74, i8 noundef signext %call.i)
  %call.i.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i46)
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc90, %if.then73
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.inc90 ], [ 0, %if.then73 ]
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub77 = sub nsw i32 %conv, %10
  %11 = sext i32 %sub77 to i64
  %cmp78.not = icmp sgt i64 %indvars.iv86, %11
  br i1 %cmp78.not, label %if.end94, label %for.body79

for.body79:                                       ; preds = %for.cond76
  %arrayidx81 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv86
  %12 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %12, %max.0
  br i1 %cmp82, label %if.then83, label %for.inc90

if.then83:                                        ; preds = %for.body79
  %arrayidx85 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %cm, i64 0, i64 %indvars.iv86
  %call.i.i36 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx85) #7
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx85, i64 noundef %call.i.i36)
  %vtable.i48 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i49 = getelementptr i8, ptr %vtable.i48, i64 -24
  %vbase.offset.i50 = load i64, ptr %vbase.offset.ptr.i49, align 8
  %add.ptr.i51 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i50
  %call.i52 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i51, i8 noundef signext 10)
  %call1.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i52)
  %call.i.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i53)
  br label %for.inc90

for.inc90:                                        ; preds = %for.body79, %if.then83
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond76, !llvm.loop !20

if.end94:                                         ; preds = %for.cond76, %if.else, %if.then69
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %cm) #7
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %words) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !11, !12}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !11, !12}
