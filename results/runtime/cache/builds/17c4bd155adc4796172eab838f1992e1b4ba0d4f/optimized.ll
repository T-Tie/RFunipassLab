; ModuleID = '<stdin>'
source_filename = "/tmp/tmpml1ber3n.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca [100 x i8], i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %if.else34.i, label %for.cond2

if.else34.i:                                      ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw [100 x i8], ptr %vla, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc73
  %5 = phi i32 [ %.pre, %for.inc73 ], [ %3, %for.cond ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc73 ], [ 0, %for.cond ]
  %charnum.0 = phi i64 [ %charnum.1, %for.inc73 ], [ 0, %for.cond ]
  %6 = sext i32 %5 to i64
  %cmp3 = icmp slt i64 %indvars.iv57, %6
  br i1 %cmp3, label %for.body4, label %for.end75

for.body4:                                        ; preds = %for.cond2
  %add.ptr6 = getelementptr inbounds nuw [100 x i8], ptr %vla, i64 %indvars.iv57
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr6) #6
  %sext = shl i64 %charnum.0, 32
  %conv = ashr exact i64 %sext, 32
  %add = add nsw i64 %conv, 1
  %add9 = add i64 %add, %call8
  %conv10 = trunc i64 %add9 to i32
  %sext21 = shl i64 %add9, 32
  %conv11 = ashr exact i64 %sext21, 32
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %add.ptr6, i64 100
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr14) #7
  %add17 = add i64 %conv11, %call16
  %cmp18 = icmp ugt i64 %add17, 80
  %cmp19 = icmp slt i32 %conv10, 82
  %or.cond = and i1 %cmp19, %cmp18
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr6, i64 noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %call29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr14) #7
  %add30 = add i64 %call29, %conv11
  %cmp31 = icmp ult i64 %add30, 81
  br i1 %cmp31, label %land.lhs.true32, label %if.end40

land.lhs.true32:                                  ; preds = %if.end
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %7, -1
  %8 = zext i32 %sub to i64
  %cmp33.not = icmp eq i64 %indvars.iv57, %8
  br i1 %cmp33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %land.lhs.true32
  %call.i.i26 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr6) #6
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr6, i64 noundef %call.i.i26)
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %land.lhs.true32, %if.end
  %call46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr14) #7
  %add47 = add i64 %call46, %conv11
  %cmp48 = icmp ult i64 %add47, 81
  br i1 %cmp48, label %land.lhs.true49, label %if.end57

land.lhs.true49:                                  ; preds = %if.end40
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %sub50 = add nsw i32 %9, -1
  %10 = zext i32 %sub50 to i64
  %cmp51 = icmp eq i64 %indvars.iv57, %10
  br i1 %cmp51, label %if.then52, label %if.end57

if.then52:                                        ; preds = %land.lhs.true49
  %call.i.i34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr6) #6
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr6, i64 noundef %call.i.i34)
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %land.lhs.true49, %if.end40
  %cmp58 = icmp sgt i32 %conv10, 81
  br i1 %cmp58, label %if.then59, label %for.inc73

if.then59:                                        ; preds = %if.end57
  %vtable.i48 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i49 = getelementptr i8, ptr %vtable.i48, i64 -24
  %vbase.offset.i50 = load i64, ptr %vbase.offset.ptr.i49, align 8
  %add.ptr.i51 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i50
  %call.i52 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i51, i8 noundef signext 10)
  %call1.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i52)
  %call.i.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i53)
  %call.i.i40 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr6) #6
  %call1.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr6, i64 noundef %call.i.i40)
  %call1.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %call69 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr6) #7
  %add70 = add i64 %call69, 1
  br label %for.inc73

for.inc73:                                        ; preds = %if.end57, %if.then59
  %charnum.1 = phi i64 [ %add70, %if.then59 ], [ %add9, %if.end57 ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end75:                                        ; preds = %for.cond2
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = distinct !{!14, !10, !11}
