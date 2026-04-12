; ModuleID = '<stdin>'
source_filename = "/tmp/tmp28_3fzzu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@str = dso_local local_unnamed_addr global [1000 x [50 x i8]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %label = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  %str = alloca [1000 x [50 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %label) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %label, i8 0, i64 4000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 50000, ptr nonnull %str) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50000) %str, i8 0, i64 50000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %while.cond, label %if.else34.i

if.else34.i:                                      ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [50 x i8]], ptr %str, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %for.cond, %while.end
  %k.0 = phi i32 [ %sub, %while.end ], [ 0, %for.cond ]
  %cmp3.not = icmp sgt i32 %k.0, %0
  br i1 %cmp3.not, label %for.cond17, label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.cond
  %2 = sext i32 %k.0 to i64
  br label %while.cond4

while.cond4:                                      ; preds = %while.cond4.preheader, %while.body6
  %indvars.iv48 = phi i64 [ %2, %while.cond4.preheader ], [ %indvars.iv.next49, %while.body6 ]
  %l.1 = phi i32 [ -1, %while.cond4.preheader ], [ %conv13, %while.body6 ]
  %cmp5 = icmp slt i32 %l.1, 81
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond4
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1
  %arrayidx9 = getelementptr inbounds [1000 x [50 x i8]], ptr %str, i64 0, i64 %indvars.iv.next49
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx9) #7
  %3 = trunc i64 %call11 to i32
  %4 = add nsw i32 %l.1, 1
  %conv13 = add i32 %4, %3
  br label %while.cond4, !llvm.loop !12

while.end:                                        ; preds = %while.cond4
  %5 = trunc nsw i64 %indvars.iv48 to i32
  %sub = add nsw i32 %5, -1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds [1000 x i32], ptr %label, i64 0, i64 %idxprom14
  store i32 1, ptr %arrayidx15, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !13

for.cond17:                                       ; preds = %while.cond, %for.inc32
  %6 = phi i32 [ %.pre, %for.inc32 ], [ %0, %while.cond ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc32 ], [ 1, %while.cond ]
  %str.pn = phi ptr [ %p.0, %for.inc32 ], [ %str, %while.cond ]
  %p.0 = getelementptr inbounds nuw i8, ptr %str.pn, i64 50
  %7 = sext i32 %6 to i64
  %cmp19.not.not = icmp slt i64 %indvars.iv51, %7
  br i1 %cmp19.not.not, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond17
  %arrayidx22 = getelementptr inbounds nuw [1000 x i32], ptr %label, i64 0, i64 %indvars.iv51
  %8 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23.not = icmp eq i32 %8, 1
  %call.i.i20 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.0) #6
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %p.0, i64 noundef %call.i.i20)
  br i1 %cmp23.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body20
  %call1.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc32

if.else:                                          ; preds = %for.body20
  %vtable.i33 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i34 = getelementptr i8, ptr %vtable.i33, i64 -24
  %vbase.offset.i35 = load i64, ptr %vbase.offset.ptr.i34, align 8
  %add.ptr.i36 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i35
  %call.i37 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i36, i8 noundef signext 10)
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i37)
  %call.i.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i38)
  br label %for.inc32

for.inc32:                                        ; preds = %if.then, %if.else
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !16

for.end34:                                        ; preds = %for.cond17
  %idxprom35 = and i64 %indvars.iv51, 4294967295
  %arrayidx36 = getelementptr inbounds nuw [1000 x [50 x i8]], ptr %str, i64 0, i64 %idxprom35
  %call.i.i26 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx36) #6
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx36, i64 noundef %call.i.i26)
  %vtable.i40 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i41 = getelementptr i8, ptr %vtable.i40, i64 -24
  %vbase.offset.i42 = load i64, ptr %vbase.offset.ptr.i41, align 8
  %add.ptr.i43 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i42
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i43, i8 noundef signext 10)
  %call1.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i44)
  call void @llvm.lifetime.end.p0(i64 50000, ptr nonnull %str) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %label) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
