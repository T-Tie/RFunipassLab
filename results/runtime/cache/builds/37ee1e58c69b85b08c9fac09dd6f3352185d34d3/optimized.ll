; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjl_vqqjd.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %ch = alloca [1000 x [41 x i8]], align 16
  %len = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 41000, ptr nonnull %ch) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %len) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %while.cond

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %ch, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #6
  %conv = trunc i64 %call5 to i32
  %arrayidx7 = getelementptr inbounds nuw [1000 x i32], ptr %len, i64 0, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond.loopexit:                              ; preds = %while.cond9
  %2 = trunc nsw i64 %indvars.iv31 to i32
  br label %while.cond, !llvm.loop !12

while.cond:                                       ; preds = %for.cond, %while.cond.loopexit
  %3 = phi i32 [ %5, %while.cond.loopexit ], [ %0, %for.cond ]
  %num.0 = phi i32 [ %num.1, %while.cond.loopexit ], [ 0, %for.cond ]
  %cnt.0 = phi i32 [ %2, %while.cond.loopexit ], [ 0, %for.cond ]
  %cmp8.not = icmp slt i32 %cnt.0, %3
  br i1 %cmp8.not, label %while.cond9.preheader, label %while.end35

while.cond9.preheader:                            ; preds = %while.cond
  %4 = sext i32 %cnt.0 to i64
  %arrayidx11.phi.trans.insert = getelementptr inbounds [1000 x i32], ptr %len, i64 0, i64 %4
  %.pre = load i32, ptr %arrayidx11.phi.trans.insert, align 4, !tbaa !5
  br label %while.cond9

while.cond9:                                      ; preds = %while.cond9.preheader, %if.end34
  %5 = phi i32 [ %3, %while.cond9.preheader ], [ %.pre34, %if.end34 ]
  %6 = phi i32 [ %.pre, %while.cond9.preheader ], [ %8, %if.end34 ]
  %indvars.iv31 = phi i64 [ %4, %while.cond9.preheader ], [ %indvars.iv.next32, %if.end34 ]
  %num.1 = phi i32 [ %num.0, %while.cond9.preheader ], [ %num.2, %if.end34 ]
  %add = add nsw i32 %6, %num.1
  %cmp12 = icmp slt i32 %add, 81
  %7 = sext i32 %5 to i64
  %cmp17.not = icmp slt i64 %indvars.iv31, %7
  %or.cond = select i1 %cmp12, i1 %cmp17.not, i1 false
  br i1 %or.cond, label %if.end19, label %while.cond.loopexit

if.end19:                                         ; preds = %while.cond9
  %arrayidx15 = getelementptr inbounds [1000 x [41 x i8]], ptr %ch, i64 0, i64 %indvars.iv31
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx15) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx15, i64 noundef %call.i.i)
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %len, i64 0, i64 %indvars.iv.next32
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add27 = add nsw i32 %8, %add
  %cmp28 = icmp slt i32 %add27, 80
  %9 = load i32, ptr %n, align 4
  %10 = sext i32 %9 to i64
  %cmp29 = icmp slt i64 %indvars.iv.next32, %10
  %or.cond15 = select i1 %cmp28, i1 %cmp29, i1 false
  br i1 %or.cond15, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end19
  %inc31 = add nsw i32 %add, 1
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end34

if.else:                                          ; preds = %if.end19
  %vtable.i22 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i23 = getelementptr i8, ptr %vtable.i22, i64 -24
  %vbase.offset.i24 = load i64, ptr %vbase.offset.ptr.i23, align 8
  %add.ptr.i25 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i24
  %call.i26 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i25, i8 noundef signext 10)
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i26)
  %call.i.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then30
  %num.2 = phi i32 [ %inc31, %if.then30 ], [ 0, %if.else ]
  %.pre34 = load i32, ptr %n, align 4
  br label %while.cond9, !llvm.loop !15

while.end35:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 41000, ptr nonnull %ch) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
