; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgkiltasz.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call81.loc = alloca ptr, align 8
  %call73.loc = alloca ptr, align 8
  %call71.loc = alloca ptr, align 8
  %call.i.i251.loc = alloca ptr, align 8
  %cash = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %cash) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %cash)
  %0 = load i32, ptr %cash, align 4, !tbaa !5
  %rem = srem i32 %0, 10
  %div = sdiv i32 %0, 10
  %rem1 = srem i32 %div, 10
  %div2 = sdiv i32 %0, 100
  %rem3 = srem i32 %div2, 10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem3)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %call4, ptr nofree noundef writeonly null, i32 noundef -1)
  switch i32 %rem1, label %sw.epilog [
    i32 9, label %sw.epilog.sink.split
    i32 8, label %sw.bb12
    i32 7, label %sw.bb19
    i32 6, label %sw.bb26
    i32 5, label %sw.bb33
    i32 4, label %sw.bb40
    i32 3, label %sw.bb47
    i32 2, label %sw.bb54
    i32 1, label %sw.bb61
    i32 0, label %sw.bb68
  ]

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb47:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb54:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb61:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb68:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %entry, %sw.bb12, %sw.bb19, %sw.bb26, %sw.bb33, %sw.bb40, %sw.bb47, %sw.bb54, %sw.bb61, %sw.bb68
  %.sink285 = phi i32 [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 0, %sw.bb54 ], [ 0, %sw.bb47 ], [ 0, %sw.bb40 ], [ 1, %sw.bb33 ], [ 1, %sw.bb26 ], [ 1, %sw.bb19 ], [ 1, %sw.bb12 ], [ 1, %entry ]
  %.sink282 = phi i32 [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 1, %sw.bb54 ], [ 1, %sw.bb47 ], [ 2, %sw.bb40 ], [ 0, %sw.bb33 ], [ 0, %sw.bb26 ], [ 1, %sw.bb19 ], [ 1, %sw.bb12 ], [ 2, %entry ]
  %.sink = phi i32 [ 0, %sw.bb68 ], [ 1, %sw.bb61 ], [ 0, %sw.bb54 ], [ 1, %sw.bb47 ], [ 0, %sw.bb40 ], [ 0, %sw.bb33 ], [ 1, %sw.bb26 ], [ 0, %sw.bb19 ], [ 1, %sw.bb12 ], [ 0, %entry ]
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink285)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %call71.loc)
  call fastcc void @outlined_ir_func_0.6(ptr noundef nonnull align 8 dereferenceable(264) %call69, i32 noundef %.sink282, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call71.loc)
  %call71.reload = load ptr, ptr %call71.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef %call71.loc)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %call73.loc)
  call fastcc void @outlined_ir_func_0.6(ptr noundef nonnull align 8 dereferenceable(264) %call71.reload, i32 noundef %.sink, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call73.loc)
  %call73.reload = load ptr, ptr %call73.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef %call73.loc)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %call73.reload, ptr nofree noundef writeonly null, i32 noundef -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %cmp = icmp sgt i32 %rem, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call.i.i251.loc)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %call75, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call.i.i251.loc, i32 noundef 0)
  %call.i.i251.reload = load ptr, ptr %call.i.i251.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call.i.i251.loc)
  %sub = add nsw i32 %rem, -5
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i251.reload, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call81.loc)
  call fastcc void @outlined_ir_func_0.6(ptr noundef nonnull align 8 dereferenceable(264) %call79, i32 %rem, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call81.loc)
  %call81.reload = load ptr, ptr %call81.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call81.loc)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call81.sink287 = phi ptr [ %call81.reload, %if.else ], [ %call77, %if.then ]
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %call81.sink287, ptr nofree noundef writeonly null, i32 noundef -1)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %cash) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noalias nofree noundef writeonly align 8 captures(none) %1, i32 noundef %2) unnamed_addr #4 {
entry_after_outline.exitStub:
  %vtable.i = load ptr, ptr %0, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %vbase.offset.i
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call.i35)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %output_block_2_0, label %final_block_0

output_block_2_0:                                 ; preds = %entry_after_outline.exitStub
  store ptr %call.i.i, ptr %1, align 8
  br label %final_block_0

final_block_0:                                    ; preds = %entry_after_outline.exitStub, %output_block_2_0
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0.6(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 %1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
sw.epilog.sink.split_after_outline.exitStub:
  %vtable.i224 = load ptr, ptr %0, align 8, !tbaa !9
  %vbase.offset.ptr.i225 = getelementptr i8, ptr %vtable.i224, i64 -24
  %vbase.offset.i226 = load i64, ptr %vbase.offset.ptr.i225, align 8, !invariant.load !11
  %add.ptr.i227 = getelementptr inbounds i8, ptr %0, i64 %vbase.offset.i226
  %call.i228 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i227, i8 noundef signext 10)
  %call1.i229 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call.i228)
  %call.i.i230 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i229)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i230, i32 noundef %1)
  store ptr %call71, ptr %2, align 8
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{}
